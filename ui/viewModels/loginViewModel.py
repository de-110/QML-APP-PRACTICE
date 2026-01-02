from PySide6.QtCore import QObject, Slot

class LoginViewModel(QObject):
    @Slot(str, str)
    def login(self, username, password):
        print("USERNAME: "+ username + "PASSWORD: " + password)