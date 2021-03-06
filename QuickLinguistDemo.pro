TEMPLATE = app

QT += qml quick
CONFIG += c++11

SOURCES += main.cpp

RESOURCES += qml.qrc \
    translations.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


lupdate_only {
    $$PWD/*.qml
}

TRANSLATIONS +=  translations/QuickLinguistDemo_zh_CN.ts \
                 translations/QuickLinguistDemo_en.ts
