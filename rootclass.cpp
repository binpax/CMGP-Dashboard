#include "rootclass.h"

static void updateOutput(QString s, char addr, bool state){
    QSerialPort serial;
    serial.setPortName(s);
    serial.setBaudRate(QSerialPort::Baud19200);
    serial.setDataBits(QSerialPort::Data8);
    serial.setParity(QSerialPort::NoParity);
    serial.setStopBits(QSerialPort::OneStop);
    serial.setFlowControl(QSerialPort::NoFlowControl);
    QByteArray buff;
    buff[0] = 0x06 + !state;
    buff[1] = 0x00;
    buff[2] = addr;
    buff[3] = buff[2]^buff[1]^buff[0] ;
    if (serial.open(QIODevice::ReadWrite)) {
        qDebug()<<"Connectedd"<<buff;
        serial.write(buff);
        serial.waitForBytesWritten();
        serial.close();
    } else {
        qDebug()<<"Open error"<<serial.error();
    }
}

RootClass::RootClass(){
    auto folder_home = QDir::home();
    if(folder_home.cd("pdf")){
        qDebug()<<"ok ";
        folder_home.setNameFilters(QStringList()<<"*.pdf");
        auto list = folder_home.entryInfoList();
        foreach (auto var, list) {
            auto fullpdfpath = var.fileName();
            qDebug()<<fullpdfpath;
            dataList.append(fullpdfpath);
        }
    }
}

void RootClass::buttonClick(int id){
    qDebug()<<"buttonClick go   : "<<id;
}

QString RootClass::pdfClick(QString name){
    qDebug()<<"pdfClick go   : "<<name;
    QDir r;
    return r.homePath()+QDir::separator() + name;
}
