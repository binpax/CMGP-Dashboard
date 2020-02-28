#include "rootclass.h"

void SyslogMessageHandler(QtMsgType type, const QMessageLogContext &context, const QString &msg)
{
    Q_UNUSED(context)

    QByteArray localMsg = msg.toLocal8Bit();
      switch (type) {
      case QtDebugMsg:
          fprintf(stderr, "Debug: %s\n", localMsg.constData());
          syslog(LOG_DEBUG, "Example2 (debug): %s", localMsg.constData());
          break;
      case QtInfoMsg:
          fprintf(stderr, "Info: %s\n", localMsg.constData());
          syslog(LOG_INFO, "Example2 (info): %s", localMsg.constData());
          break;
      case QtWarningMsg:
          fprintf(stderr, "Warning: %s\n", localMsg.constData());
          syslog(LOG_WARNING, "Example2 (warning): %s", localMsg.constData());
          break;
      case QtCriticalMsg:
          fprintf(stderr, "Critical: %s\n", localMsg.constData());
          syslog(LOG_CRIT, "Example2 (critical): %s", localMsg.constData());
          break;
      case QtFatalMsg:
          fprintf(stderr, "Fatal: %s\n", localMsg.constData());
          syslog(LOG_ALERT, "Example2 (alert): %s", localMsg.constData());
          abort();
      }
}

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
        qInfo("Info log message from Qt test program");
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
    qInfo("buttonClick");

    if (id > 16 ){
        updateOutput("/dev/ttyUSB2",1<<(id-16),!state);
        qDebug()<<"buttonClick go : "<<id<<state;
        return;
    }

    if (id > 8 ){
        updateOutput("/dev/ttyUSB1",id-8,!state);
        qDebug()<<"buttonClick go : "<<id<<state;
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
