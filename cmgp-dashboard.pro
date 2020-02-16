QT += quick network serialport core gui  widgets

CONFIG += c++11
# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0 -Wl,--unresolved-symbols=ignore-all
QML_IMPORT_PATH += $$PWD
QML_IMPORT_PATH2 += /home/ahmed/Qt/5.12.5/gcc_64/qml/QtQuick/Shapes
QML_IMPORT_PATH += /home/ahmed/Qt/5.12.5/gcc_64/qml/QtQuick/Shapes
LIBS += -lpoppler-qt5
SOURCES += \
        filedownloader.cpp \
        main.cpp \
        rootclass.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    filedownloader.h \
    pdf_viewer/poppler-annotation-helper.h \
    pdf_viewer/poppler-annotation-private.h \
    pdf_viewer/poppler-annotation.h \
    pdf_viewer/poppler-converter-private.h \
    pdf_viewer/poppler-embeddedfile-private.h \
    pdf_viewer/poppler-export.h \
    pdf_viewer/poppler-form.h \
    pdf_viewer/poppler-link-extractor-private.h \
    pdf_viewer/poppler-link.h \
    pdf_viewer/poppler-media.h \
    pdf_viewer/poppler-optcontent-private.h \
    pdf_viewer/poppler-optcontent.h \
    pdf_viewer/poppler-page-private.h \
    pdf_viewer/poppler-page-transition-private.h \
    pdf_viewer/poppler-page-transition.h \
    pdf_viewer/poppler-private.h \
    pdf_viewer/poppler-qiodeviceoutstream-private.h \
    pdf_viewer/poppler-qt5.h \
    rootclass.h





SOURCES += pdf_viewer/PdfViewer.cpp \
    pdf_viewer/PdfDocument.cpp \
    pdf_viewer/Polynomial.cpp

HEADERS  += \
    pdf_viewer/PdfViewer.h \
    pdf_viewer/PdfDocument.h \
    pdf_viewer/Polynomial.h
