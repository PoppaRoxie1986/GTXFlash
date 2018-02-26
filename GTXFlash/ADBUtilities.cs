using GTXFlash.ViewModel;
using SharpAdbClient;
using System;
using System.IO;
using System.Linq;
using System.Net;
using System.Threading;
using System.Threading.Tasks;

namespace GTXFlash
{
    public class ADBUtilities : IProgress<int>
    {
        #region Private Fields

        private GTXFlashViewModel _vm;
        private AdbServer server = new AdbServer();

        #endregion Private Fields

        #region Public Constructors

        public ADBUtilities(GTXFlashViewModel vm)
        {
            _vm = vm;
        }

        StartServerResult? _adbServerStatus = null;

        public StartServerResult? AdbServerStatus
        {
            get
            {
                return _adbServerStatus;
            }

            set
            {
                _adbServerStatus = value;
            }
        }

        #endregion Public Constructors

        #region Public Methods

        public void Report(int value)
        {
            throw new NotImplementedException();
        }

        public void startADB()
        {
            _vm.Status = "adb Starting....";
            AdbServerStatus = null;

            Task task = Task.Factory.StartNew(() =>
            {
                var result = server.StartServer(@".\adb\adb.exe", restartServerIfNewer: false);

                AdbServerStatus = result;
                _vm.Status = $"adb {result}";
            });
        }


        public void Connect()
        {
            var client = server as IAdbClient;
            if (client != null)
            {
                client.Connect(new DnsEndPoint(_vm.IPAddress, _vm.PortNumber));
                client.Root(client.GetDevices().First());
            }
        }

        #endregion Public Methods

        #region Private Methods

        private void DownloadFile(string remoteFilePath, string localPath)
        {
            var device = AdbClient.Instance.GetDevices().First();

            using (SyncService service = new SyncService(new AdbSocket(new IPEndPoint(IPAddress.Loopback, AdbClient.AdbServerPort)), device))
            using (Stream stream = File.OpenWrite(localPath))
            {
                service.Pull(remoteFilePath, stream, null, CancellationToken.None);
            }
        }

        private void UploadFile(string srcFilePath, string targetFilePath, int permissions = 444)
        {
            var device = AdbClient.Instance.GetDevices().First();

            using (SyncService service = new SyncService(new AdbSocket(new IPEndPoint(IPAddress.Loopback, AdbClient.AdbServerPort)), device))
            using (Stream stream = File.OpenRead(srcFilePath))
            {
                service.Push(stream, targetFilePath, permissions, DateTime.Now, null, CancellationToken.None);
            }
        }

        #endregion Private Methods
    }
}