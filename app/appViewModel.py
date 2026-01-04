from PySide6.QtCore import QObject, Property

from ui.viewModels.loginViewModel import LoginViewModel

class AppViewModel(QObject):
    def __init__(self, parent=None):
        super().__init__(parent)
        self.login_vm = LoginViewModel(self)
    
    @Property(QObject, constant=True)
    def loginViewModel(self):
        return self.login_vm
    