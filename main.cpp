#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QTranslator>
#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QTranslator qtTranslator;
    qtTranslator.load("QuickLinguistDemo_" + QLocale::system().name(), ":/translations/");
    app.installTranslator(&qtTranslator);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
