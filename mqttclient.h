#include <mosquittopp.h>
#include <QDebug>
#include <stdio.h>
/*
    MQTT Client class that uses the lib mosquitto.cpp class
    Note for this to work the environment must have mosquitto enabled.
    Mosquitto also depends upon the following packages c-ares, openssl and crypto.
    The mosquittopp is provided by the mosquitto source and is a wrapper around
    the 'C' API. See the documentation for mosquitopp and mosquitto on how to use.

    Please put all code calling or using this class inside the define SUPPORT_MQTT_CLIENT
    This should be enabled in the project .pro file and the required files linked.
    See PanelApp.pro for an example.

    This class can be repeated to create specific links to specific brokers or used
    as a general hookup to a broker.
*/

class MqttClient : public mosqpp::mosquittopp
{
public:
        MqttClient(const char *id, const char *host, int port, char* user , char* pw );
        ~MqttClient();

        void on_connect(int rc);
        void on_message(const struct mosquitto_message *message);
        void on_subscribe(int mid, int qos_count, const int *granted_qos);
};
