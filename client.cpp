#include "client.h"

client::client(QObject *parent) :
    QObject(parent)
{
    //uid = QUuid::createUuid();
    qDebug() << "Creating client";
    _brokerHost = new char(24);
    _user = new char(24);
    _passwd = new char(24);
    _topic = new char(24);
    _msg = new char(48);

    sprintf(_brokerHost,"%s", "m20.cloudmqtt.com");


    _brokerPort = 18022;
    sprintf(_user,"%s", "ihygepmh");
    sprintf(_passwd, "%s","GAB35__1D1zg");

    qDebug() << "Set constants";

    _client = new MqttClient(NULL, _brokerHost, _brokerPort,_user, _passwd);

    qDebug() << "Client created";

    sprintf(_topic,"%s", "/test");
    sprintf(_msg,"%s", "From Panel");

    _client->subscribe(NULL, (char*)"/messages", 1);


}

void client::sendMessage()
{
    qDebug() << "Publishing";
    _client->publish(NULL, _topic, strlen(_msg), _msg, 1, false);
    qDebug() << "Published";
}
