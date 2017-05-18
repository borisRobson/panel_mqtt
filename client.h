#ifndef CLIENT_H
#define CLIENT_H

#include <QObject>
#include <QUuid>
#include <QDebug>

#include "stdio.h"

#include "mqttclient.h"

class client : public QObject
{
    Q_OBJECT
public:
    explicit client(QObject *parent = 0);

signals:

public slots:
    void sendMessage();


private:
    MqttClient *_client;

    char* _brokerHost;
    int _brokerPort;
    QUuid uid;
    char*  _user;
    char* _passwd;

    char* _topic;
    char* _msg;
};

#endif // CLIENT_H
