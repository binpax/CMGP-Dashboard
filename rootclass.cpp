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
    buff[0] = 0x06+(int)state;
    buff[1] = 0x00;
    buff[2] = addr;
    buff[3] = buff[2]^buff[1]^buff[0] ;
    if (serial.open(QIODevice::ReadWrite)) {
        qDebug()<<"Connectedd"<<buff;
        serial.write(buff);
        serial.waitForBytesWritten();
        QThread::msleep(500);
        serial.close();
    } else {
        qDebug()<<"Open error"<<serial.error();
    }
}

RootClass::RootClass(){
    updateOutput("/dev/ttyUSB0",1,true);
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

void RootClass::buttonClick(unsigned int id, bool state){
    if (id > 16 ){
        updateOutput("/dev/ttyUSB2",1<<(id-16),!state);
        return;
    }
    if (id > 8 ){
        updateOutput("/dev/ttyUSB1",id-8,!state);
        return;
    }
    updateOutput("/dev/ttyUSB0",1<<id,!state);
    qDebug()<<"buttonClick go : "<<id<<state;
}

QString RootClass::pdfClick(QString name){
    qDebug()<<"pdfClick go   : "<<name;
    QDir r;
    return r.homePath()+QDir::separator()+"pdf" +QDir::separator()+ name;
}
