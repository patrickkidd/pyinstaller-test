import sys
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *


app = QApplication(sys.argv)
w = QPushButton('Quit')
w.clicked.connect(app.quit)
w.show()
app.exec()
