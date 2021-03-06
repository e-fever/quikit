#include <QtQml>
#include "qmlfilelistmodel.h"
#include "boardpositionattachedtype.h"

using namespace QUIKit;

template <typename T>
static QObject* provider(QQmlEngine *engine, QJSEngine *scriptEngine) {
    Q_UNUSED(engine)
    Q_UNUSED(scriptEngine)

    T* object = new T();
    return object;
}

static void registerTypes() {
    qmlRegisterType<QmlFileListModel>("QUIKit", 1, 0, "QmlFileListModel");
    qmlRegisterType<BoardPositionAttachedType>("QUIKit", 1, 0, "BoardPosition");
}

Q_COREAPP_STARTUP_FUNCTION(registerTypes)
