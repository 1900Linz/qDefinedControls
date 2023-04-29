#include "roundprogress.h"

RoundProgress::RoundProgress(QObject * parent)
{
    Q_UNUSED(parent)

    setSource(QUrl("qrc:/RoundProgressEvent.qml"));
    show();

    //使用以下方式可获取 qml 对象，并以 QQuickItem* 格式返回
    //QQuickItem* qmlItem = widget -> rootObject();
    //
    //使用invokeMethod可以调用Qml中的函数
    //QVariant retVal;
    //QMetaObject::invokeMethod(view->rootObject(),     /* Qml实例 */
    //                          "setCurrentValue",      /* 函数名字 */
    //                          Qt::DirectConnection,   /* 连接方式 */
    //                          Q_RETURN_ARG(QVariant, retVal), /* 标记返回值 */
    //                          Q_ARG(QVariant, 0),     /* 输入参数1 */
    //                          //Q_ARG(QVariant, ...));/* 输入参数2,假如有 */
}
