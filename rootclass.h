#ifndef ROOTCLASS_H
#define ROOTCLASS_H

#include <QProcess>
#include <QtNetwork>
#include "filedownloader.h"
#include <QDebug>
#include <QSerialPort>
static constexpr int Version  = 1;

class RootClass : public QObject
{
    Q_OBJECT
    FileDownloader *fileReturn;
    QString updateLink;
public:
    QStringList dataList;

    RootClass();
    Q_INVOKABLE QStringList getQStringList(){ return dataList;}
    Q_INVOKABLE void buttonClick(int id, bool state);
    Q_INVOKABLE QString pdfClick(QString name);
};

#endif // ROOTCLASS_H
