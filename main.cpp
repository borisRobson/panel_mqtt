#include <QtCore/QCoreApplication>
#include "client.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    client *cli = new client();
    cli->sendMessage();

    return a.exec();
}
