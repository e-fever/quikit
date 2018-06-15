QT       += testlib qml

TARGET = unittests
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES +=     main.cpp     tests.cpp

DEFINES += SRCDIR=\\\"$$PWD/\\\"
DEFINES += QUICK_TEST_SOURCE_DIR=\\\"$$PWD/qmltests\\\"

ROOTDIR = $$PWD/../../

include(vendor/vendor.pri)
include($$ROOTDIR/quikit.pri)

DISTFILES +=     qpm.json     \
    ../../README.md \
    qmltests/tst_BoardLayout.qml \
    qmltests/tst_NameTag.qml \
    ../../qpm.json \
    ../../appveyor.yml \
    qmltests/tst_QmlFileListModel.qml \
    qmltests/TestUtils.qml

HEADERS +=     tests.h

!win32 {
#    QMAKE_CXXFLAGS += -Werror
}
