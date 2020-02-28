#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QScreen>

#include "rootclass.h"
#include "pdf_viewer/PdfViewer.h"
#include "pdf_viewer/PdfDocument.h"
#include "pdf_viewer/Polynomial.h"
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    qInstallMessageHandler(SyslogMessageHandler);

    qmlRegisterType<pdf_viewer::PdfDocument>("PdfViewing", 1, 0, "PdfDocument");
    qmlRegisterType<pdf_viewer::PdfViewer>("PdfViewing", 1, 0, "PdfViewer");


    QGuiApplication app(argc, argv);
    QScreen *screen = QGuiApplication::primaryScreen();
    QRect  screenGeometry = screen->geometry();
    int height = screenGeometry.height();
    int width = screenGeometry.width();
    qInfo()<<"main height"<<height<<"width"<<width;

    RootClass rootclass;
    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:/");

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.rootContext()->setContextProperty( "rootclass", &rootclass );

    engine.load(url);
    //engine.rootContext()->setContextProperty("myModel", QVariant::fromValue(dataList));

    return app.exec();
}
