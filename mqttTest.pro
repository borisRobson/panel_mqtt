#-------------------------------------------------
#
# Project created by QtCreator 2017-05-18T15:25:26
#
#-------------------------------------------------

QT       += core

QT       -= gui

TARGET = mqttTest
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


message(Qt version: $$[QT_VERSION] Qt is installed in: $$[QT_INSTALL_PREFIX])

PROJECT_BASE_DIRECTORY = /home/standby/doorentry

QT = core network xml xmlpatterns

MOC_DIR = mocfiles

OBJECTS_DIR = objfiles

UI_DIR = ui


TEMPLATE = app

DEFINES += DEBUG

VERSION = $$system(svn info -r HEAD . | grep 'Changed\\ Rev' | cut -b 19-)
#VERSION = 100

DEFINES += PANEL_APP_VERSION=\\\"$$VERSION\\\"

# allow AES encrytion exchange, removed this as it did not scale well
#DEFINES += SUPPORT_SECURE_COMMS

# this panel has the lcdboard with the three line bitmap display screen fitted
DEFINES += SUPPORT_LCDBOARD_SCREEN

# this code supports the property bag this can be used by the system
DEFINES += SUPPORT_PROPERTYBAG

# this code supports the group identification
DEFINES += SUPPORT_GROUPING

#
# Setup paths according to target spec.
#
linux-mxc-g++ {
    # extract the boardtype from the toolchain.make file replaced the need for the project to have this.
    BOARDTYPE=$$system("grep '^BUILD_PROFILE' $$PROJECT_BASE_DIRECTORY/toolchain.make | awk -F'=' '{print $2}'")
    DEFINES += $$BOARDTYPE
    message("Arm Build: $$BOARDTYPE")

    contains ( DEFINES, IMX6 ) {
        # add cflag
        QMAKE_CXXFLAGS+=-Wno-psabi

        # Conditionally compile support for CREDENTIAL_II message
        DEFINES += SUPPORT_CREDENTIAL_II

        # Conditional compile support for Monitor firmware check for audio support (it should be 2.14 and above)
        DEFINES +=SUPPORT_FIRMWARE_CHECK

        # Conditionally compile with mqtt support
        DEFINES +=SUPPORT_MQTT_CLIENT
    }

    # Conditionally compile with etherwatcher feature enabled
    #DEFINES += SUPPORT_ETHERWATCHER
    # Conditionally compile with SIP feature enabled
    DEFINES += SUPPORT_SIP
    # Conditionally compile with IPV4 feature enabled
    DEFINES += SUPPORT_IPV4
    # Conditionally compile with Ringback feature enabled
    DEFINES += SUPPORT_RINGBACK
    # Conditionally compile with Net2 events feature enabled
    DEFINES += SUPPORT_NET2_EVENTS
    # Conditionally compile with VideoMessage feature enabled
    DEFINES += SUPPORT_VIDEOMESSAGE
    # Conditionally compile with Auxiliary IP Camera feature enabled
    DEFINES += SUPPORT_AUXILIARY_IPCAMERA
    # Conditionally compile with Conceirge feature enabled
    DEFINES += SUPPORT_CONCEIRGE

    contains ( DEFINES, SUPPORT_SIP ) {
        # the code ensures that both RTP sessions have the same port number
        DEFINES += SUPPORT_SYMMETRIC_RTP
        # the code allows RFC2833 dtmf support (for opening the door)
        DEFINES += SUPPORT_RFC2833
    }

    MYPREFIX = $$PROJECT_BASE_DIRECTORY/ltib/rootfs
    MYDRIVERS = $$PROJECT_BASE_DIRECTORY/drivers
    INCLUDEPATH += $$MYDRIVERS/gpioctl/lib
    LIBS += -L$$MYDRIVERS/gpioctl/lib/Release -lpowermgr
    INCLUDEPATH += $$MYDRIVERS/picwatchdog/lib
    LIBS += -L$$MYDRIVERS/picwatchdog/lib/Release -lpicwatchdogmgr
    INCLUDEPATH += $$MYPREFIX/usr/local/include
    LIBS += -L$$MYPREFIX/usr/lib -llog4cplus
    INCLUDEPATH += $$MYPREFIX/usr/include
    LIBS +=  -L$$MYPREFIX/usr/local/lib -lgpg-error -lgcrypt
    INCLUDEPATH += $$MYPREFIX/usr/include/gstreamer-0.10 $$MYPREFIX/usr/include/glib-2.0 $$MYPREFIX/usr/lib/glib-2.0/include $$MYPREFIX/usr/include/libxml2
    LIBS +=  -L$$MYPREFIX/usr/lib -lgstreamer-0.10 -lgstapp-0.10 -lgstbase-0.10 -lglib-2.0 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lz -lxml2
    LIBS += -L$$MYPREFIX/usr/lib -lts -lasound -lpng -lfreetype

    #INCLUDEPATH += $$MYPREFIX/usr/local/qserialport/include/QtSerialPort
    #TODO: Confirm this is acceptable, as we'd hope to find the includes in MYPREFIX world vs the host world.
    INCLUDEPATH += /usr/include/QtSerialPort
    LIBS += -L$$MYPREFIX/usr/lib -L$$MYPREFIX/usr/lib -lQtSerialPort

    #INCLUDEPATH += /home/standby/doorentry/hostprerequisites/qserialport/include/QtSerialPort
    #LIBS += -L$$MYPREFIX/usr/lib -lQtSerialPort
}


LIBS += -L/usr/local/lib/ -lmosquitto -lmosquittopp -lssl -lcrypto -lcares

SOURCES += main.cpp \
    mqttclient.cpp \
    client.cpp

HEADERS += \
    mqttclient.h \
    client.h
