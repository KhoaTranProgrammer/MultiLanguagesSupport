#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QQmlEngine>
#include <QQmlContext>
#include "mylang.h"
#include "mytranslator.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<MyLang>("MyLang", 1, 0, "MyLang");

    MyTranslator mTrans(&app);
    QQuickView mView;
    mView.engine()->rootContext()->setContextProperty("mytrans", (QObject*)&mTrans);
    mView.setSource(QUrl("qrc:/main.qml"));
    mView.setMinimumSize(QSize(800, 480));
    mView.show();

    return app.exec();
}
