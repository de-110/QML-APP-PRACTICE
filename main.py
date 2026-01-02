import sys
import os

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine

from ui.viewModels.loginViewModel import LoginViewModel

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    engine.load(os.path.join(os.path.dirname(__file__), "ui/views/login_ui.qml"))

    login_vm = LoginViewModel()

    engine.rootContext().setContextProperty("loginViewModel", login_vm)

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())