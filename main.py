# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtCore import QCoreApplication, Qt, QUrl


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)

    engine = QQmlApplicationEngine()

    filename = os.fspath("UI/main.qml")
    url = QUrl.fromLocalFile(filename)


    def handle_object_created(obj, obj_url):
        if obj is None and url == obj_url:
            QCoreApplication.exit(-1)


    engine.objectCreated.connect(handle_object_created, Qt.QueuedConnection)
    engine.load(url)

    sys.exit(app.exec())
