from PySide6.QtCore import QObject, Slot, Signal, Property

class LoginViewModel(QObject):
    statusChanged = Signal()
    loginSuccess = Signal()
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.login_status: bool = True
    
    @Property(bool, notify=statusChanged)
    def loginStatus(self):
        return self.login_status

    @Slot(str, str)
    def validateCredentials(self, username, password):
        val_username = username.strip()
        val_password = password.strip()
        
        if val_username == "admin" and val_password == "admin":
            self.login_status = True
            self.statusChanged.emit()
            self.loginSuccess.emit()
        else:
            self.login_status = False
            self.statusChanged.emit()