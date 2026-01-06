import sys
import os

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine

from app.appViewModel import AppViewModel

if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    
    app_vm = AppViewModel(parent=app)
    engine.rootContext().setContextProperty("ems_connect", app_vm)
    engine.load(os.path.join(os.path.dirname(__file__), "ui/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())