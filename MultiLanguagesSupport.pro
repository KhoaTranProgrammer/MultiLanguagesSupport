TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc

TRANSLATIONS = translator/HelloWorld_JAP.ts \
                             translator/HelloWorld_VIE.ts

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    mylang.h \
    mytranslator.h
