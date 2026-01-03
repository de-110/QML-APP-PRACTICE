import sys
import os

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine

from ui.viewModels.loginViewModel import LoginViewModel

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    
    login_vm = LoginViewModel()
    engine.setInitialProperties({"loginViewModel": login_vm})
    engine.load(os.path.join(os.path.dirname(__file__), "ui/views/login_ui.qml"))



    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())