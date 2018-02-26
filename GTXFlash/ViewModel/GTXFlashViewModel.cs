using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace GTXFlash.ViewModel
{
    public class GTXFlashViewModel : INotifyPropertyChanged
    {
        #region Private Fields

        private string _IPAddress;
        private int _portNumber = 5555;
        private string _status = "adb not started";

        #endregion Private Fields

        #region Public Events

        public event PropertyChangedEventHandler PropertyChanged;

        #endregion Public Events

        #region Public Properties

        public string IPAddress
        {
            get
            {
                return _IPAddress;
            }

            set
            {
                _IPAddress = value;
                if (_IPAddress.Contains(":"))
                {
                    var split = _IPAddress.Split(':');
                    _IPAddress = split[0];
                    int.TryParse(split[1], out _portNumber);
                }
                OnPropertyChanged();
            }
        }

        public string Status
        {
            get
            {
                return _status;
            }

            set
            {
                _status = value;
                OnPropertyChanged();
            }
        }

        public int PortNumber
        {
            get
            {
                return _portNumber;
            }

            set
            {
                _portNumber = value;
            }
        }

        #endregion Public Properties

        #region Private Methods

        private void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        #endregion Private Methods
    }
}