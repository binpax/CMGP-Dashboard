#ifndef ROOTCLASS_H
#define ROOTCLASS_H

#include <syslog.h>
#include <QProcess>
#include <QtNetwork>
#include "filedownloader.h"
#include <QDebug>
#include <QSerialPort>
#include <QScreen>

static QScreen *screen;
static constexpr int Version  = 1;
void SyslogMessageHandler(QtMsgType type, const QMessageLogContext &context, const QString &msg);

class RootClass : public QObject
{
    Q_OBJECT
    FileDownloader *fileReturn;
    QString updateLink;
public:
    QStringList dataList;

    RootClass();
    Q_INVOKABLE QStringList getQStringList(){ return dataList;}
    Q_INVOKABLE void buttonClick(unsigned int id, bool state);
    Q_INVOKABLE QString pdfClick(QString name);
};

#endif // ROOTCLASS_H
