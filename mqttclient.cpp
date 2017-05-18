#include "qdebug.h"
#include "mqttclient.h"

/**
 * @brief Destructor which should not be called in the life time of the object
 *
*/
MqttClient::MqttClient(const char *id, const char *host, int port,char* user = NULL, char* pw = NULL) : mosquittopp(id)
{
    mosqpp::lib_init();			 // Initialize libmosquitto

    qDebug() << "Host: " << host;
    qDebug() << "User: " << user;
    int keepalive = 120;                 // seconds
    if(user != NULL){
        username_pw_set(user, pw);
    }
    int ctx = connect(host, port, keepalive);	 // Connect to MQTT Broker
    qDebug() << "ctx: " << ctx ;
}

/**
 * @brief Destructor which disconnects any open connection to the broker
 *
*/
MqttClient::~MqttClient()
{
    disconnect();
}

/**
 * @brief Callback method when the connection is completed or fails
 *
 * @param rc - return code indicates
*/
void MqttClient::on_connect(int rc)
{
    qDebug() << "Connected with code" << rc;

    // check if the connection is successful
    if (rc == 0)
    {
        // connection to broker successful - subscribe to elements
        subscribe(NULL, "command/IGot");
    }
}



/**
 * @brief Callback method when the subscription is completed or fails
 *
 * @param mid
 * @param qos_count
 * @param granted_qos
*/
void MqttClient::on_subscribe(int mid, int qos_count, const int *granted_qos)
{
    Q_UNUSED(mid);
    Q_UNUSED(qos_count);
    Q_UNUSED(granted_qos);

    qDebug() << "Subscription succeeded";
}

/**
 * @brief Callback method when a message is received
 *
 * @param message - pointer to message received
*/
void MqttClient::on_message(const struct mosquitto_message *message)
{
    Q_UNUSED(message);

    qDebug() << "Message succeeded";
}
