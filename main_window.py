from PyQt5.QtWidgets import *
import json

class MyWindow(QWidget):
    def __init__(self):
        super().__init__()

        with open("infor.json","r+") as f:
            
            try:
               self.lst = json.load(f)
            except json.JSONDecodeError:
                self.lst = []
        
        self.v_main_lay = QVBoxLayout()
        self.v_lay = QHBoxLayout()
        self.h_lbl_lay = QVBoxLayout()
        self.h_edit_lay = QVBoxLayout()

        self.lbl_film_nomi = QLabel("Film nomi:")
        self.lbl_rejissor = QLabel("Rejissor:")
        self.lbl_yil = QLabel("Yili:")
        self.lbl_janr = QLabel("Janr:")

        self.edit_nomi = QLineEdit()
        self.edit_nomi.setPlaceholderText("...")
        self.edit_rejissor = QLineEdit()
        self.edit_rejissor.setPlaceholderText("...")
        self.edit_yil = QLineEdit()
        self.edit_yil.setPlaceholderText("...")
        self.edit_janr = QLineEdit()
        self.edit_janr.setPlaceholderText("...")

        self.btn = QPushButton("Qo'shish")
        self.btn.clicked.connect(self.qosh)

        self.h_lbl_lay.addWidget(self.lbl_film_nomi)
        self.h_lbl_lay.addWidget(self.lbl_rejissor)
        self.h_lbl_lay.addWidget(self.lbl_yil)
        self.h_lbl_lay.addWidget(self.lbl_janr)

        self.h_edit_lay.addWidget(self.edit_nomi)
        self.h_edit_lay.addWidget(self.edit_rejissor)
        self.h_edit_lay.addWidget(self.edit_yil)
        self.h_edit_lay.addWidget(self.edit_janr)

        self.v_lay.addLayout(self.h_lbl_lay)
        self.v_lay.addLayout(self.h_edit_lay)
        self.v_main_lay.addLayout(self.v_lay)
        self.v_main_lay.addWidget(self.btn)

        self.setLayout(self.v_main_lay)

    def qosh(self):
        nomi = self.edit_nomi.text()
        rej = self.edit_rejissor.text()
        yil = self.edit_yil.text()
        janr = self.edit_janr.text()

        if nomi and rej and yil and janr:
            if yil.isdigit():
                self.new = {}
                self.new["Title"] = nomi
                self.new["Director"] = rej
                self.new["Year"] = yil
                self.new["Genre"] = janr

                self.lst.append(self.new)
                
                with open("infor.json","r+") as f:
                    json.dump(self.lst, f, indent=4)

                    QMessageBox.information(self,"message" ,"Film muvaffaqiyatli qo'shildi!")
                    self.edit_janr.clear()
                    self.edit_nomi.clear()
                    self.edit_yil.clear()
                    self.edit_rejissor.clear()
            else:
                QMessageBox.warning(self,"message","Yil raqam bo'lishi kerak!")
                self.edit_yil.clear()
        else:
            QMessageBox.warning(self,"message","Iltimos,barcha maydonlarni to'ldiring!")
