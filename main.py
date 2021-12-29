# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtCore import QUrl

from classes import Backend

if __name__ == "__main__":
    app = QGuiApplication()
    backend = Backend()

    engine = QQmlApplicationEngine()
    engine.rootContext().setContextProperty("backend", backend)

    qml_file = "UI/main.qml"
    current_dir = os.path.dirname(os.path.realpath(__file__))
    filename = os.path.join(current_dir, qml_file)
    engine.load(QUrl.fromLocalFile(filename))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
