#############################################################################
# Makefile for building: mqttTest
# Generated by qmake (2.01a) (Qt 4.7.2) on: Thu May 18 16:29:34 2017
# Project:  mqttTest.pro
# Template: app
# Command: /usr/local/QtEmbedded-4.7.2-arm/bin/qmake -spec /usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++ CONFIG+=debug -o Makefile mqttTest.pro
#############################################################################

####### Compiler, tools and options

CC            = arm-none-linux-gnueabi-gcc
CXX           = arm-none-linux-gnueabi-g++
DEFINES       = -DDEBUG -DPANEL_APP_VERSION=\"\" -DSUPPORT_LCDBOARD_SCREEN -DSUPPORT_PROPERTYBAG -DSUPPORT_GROUPING -DIMX6 -DSUPPORT_CREDENTIAL_II -DSUPPORT_FIRMWARE_CHECK -DSUPPORT_MQTT_CLIENT -DSUPPORT_SIP -DSUPPORT_IPV4 -DSUPPORT_RINGBACK -DSUPPORT_NET2_EVENTS -DSUPPORT_VIDEOMESSAGE -DSUPPORT_AUXILIARY_IPCAMERA -DSUPPORT_CONCEIRGE -DSUPPORT_SYMMETRIC_RTP -DSUPPORT_RFC2833 -DQT_XMLPATTERNS_LIB -DQT_XML_LIB -DQT_NETWORK_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -pipe -Wno-psabi -g -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++ -I. -I/usr/local/QtEmbedded-4.7.2-arm/include/QtCore -I/usr/local/QtEmbedded-4.7.2-arm/include/QtNetwork -I/usr/local/QtEmbedded-4.7.2-arm/include/QtXml -I/usr/local/QtEmbedded-4.7.2-arm/include/QtXmlPatterns -I/usr/local/QtEmbedded-4.7.2-arm/include -I../../../doorentry/drivers/gpioctl/lib -I../../../doorentry/drivers/picwatchdog/lib -I../../../doorentry/ltib/rootfs/usr/local/include -I../../../doorentry/ltib/rootfs/usr/include -I../../../doorentry/ltib/rootfs/usr/include/gstreamer-0.10 -I../../../doorentry/ltib/rootfs/usr/include/glib-2.0 -I../../../doorentry/ltib/rootfs/usr/lib/glib-2.0/include -I../../../doorentry/ltib/rootfs/usr/include/libxml2 -I/usr/include/QtSerialPort -Imocfiles -I/usr/local/QtEmbedded-4.7.2-arm/include -I../../../doorentry/ltib/rootfs/usr/include
LINK          = arm-none-linux-gnueabi-g++
LFLAGS        = -Wl,-rpath,/usr/local/QtEmbedded-4.7.2-arm/lib
LIBS          = $(SUBLIBS)  -L/usr/local/QtEmbedded-4.7.2-arm/lib -L/home/standby/doorentry/ltib/rootfs/usr/lib -L/home/standby/doorentry/drivers/gpioctl/lib/Release -lpowermgr -L/home/standby/doorentry/drivers/picwatchdog/lib/Release -lpicwatchdogmgr -L/home/standby/doorentry/ltib/rootfs/usr/lib -llog4cplus -L/home/standby/doorentry/ltib/rootfs/usr/local/lib -lgpg-error -lgcrypt -lgstreamer-0.10 -lgstapp-0.10 -lgstbase-0.10 -lglib-2.0 -lgobject-2.0 -lgmodule-2.0 -lgthread-2.0 -lrt -lz -lxml2 -lts -lasound -lpng -lfreetype -lQtSerialPort -L/usr/local/lib/ -lmosquitto -lmosquittopp -lssl -lcrypto -lcares -lQtXmlPatterns -L/usr/local/QtEmbedded-4.7.2-arm/lib -lQtXml -lQtNetwork -lQtCore -lpthread 
AR            = arm-none-linux-gnueabi-ar cqs
RANLIB        = 
QMAKE         = /usr/local/QtEmbedded-4.7.2-arm/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = arm-none-linux-gnueabi-strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = objfiles/

####### Files

SOURCES       = main.cpp \
		mqttclient.cpp \
		client.cpp mocfiles/moc_client.cpp
OBJECTS       = objfiles/main.o \
		objfiles/mqttclient.o \
		objfiles/client.o \
		objfiles/moc_client.o
DIST          = /usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/g++.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/unix.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/linux.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/qws.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/qconfig.pri \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_functions.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_config.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/exclusive_builds.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_pre.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/debug.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_post.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/warn_on.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/unix/thread.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/moc.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/resources.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/uic.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/yacc.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/lex.prf \
		mqttTest.pro
QMAKE_TARGET  = mqttTest
DESTDIR       = 
TARGET        = mqttTest

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: mqttTest.pro  /usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++/qmake.conf /usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/g++.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/unix.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/linux.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/qws.conf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/qconfig.pri \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_functions.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_config.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/exclusive_builds.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_pre.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/debug.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_post.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/warn_on.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/unix/thread.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/moc.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/resources.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/uic.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/yacc.prf \
		/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/lex.prf \
		/usr/local/QtEmbedded-4.7.2-arm/lib/libQtXmlPatterns.prl \
		/usr/local/QtEmbedded-4.7.2-arm/lib/libQtNetwork.prl \
		/usr/local/QtEmbedded-4.7.2-arm/lib/libQtCore.prl \
		/usr/local/QtEmbedded-4.7.2-arm/lib/libQtXml.prl
	$(QMAKE) -spec /usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++ CONFIG+=debug -o Makefile mqttTest.pro
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/g++.conf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/unix.conf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/linux.conf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/common/qws.conf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/qconfig.pri:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_functions.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt_config.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/exclusive_builds.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_pre.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/debug.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/default_post.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/warn_on.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/qt.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/unix/thread.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/moc.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/resources.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/uic.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/yacc.prf:
/usr/local/QtEmbedded-4.7.2-arm/mkspecs/features/lex.prf:
/usr/local/QtEmbedded-4.7.2-arm/lib/libQtXmlPatterns.prl:
/usr/local/QtEmbedded-4.7.2-arm/lib/libQtNetwork.prl:
/usr/local/QtEmbedded-4.7.2-arm/lib/libQtCore.prl:
/usr/local/QtEmbedded-4.7.2-arm/lib/libQtXml.prl:
qmake:  FORCE
	@$(QMAKE) -spec /usr/local/QtEmbedded-4.7.2-arm/mkspecs/qws/linux-mxc-g++ CONFIG+=debug -o Makefile mqttTest.pro

dist: 
	@$(CHK_DIR_EXISTS) objfiles/mqttTest1.0.0 || $(MKDIR) objfiles/mqttTest1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) objfiles/mqttTest1.0.0/ && $(COPY_FILE) --parents mqttclient.h client.h objfiles/mqttTest1.0.0/ && $(COPY_FILE) --parents main.cpp mqttclient.cpp client.cpp objfiles/mqttTest1.0.0/ && (cd `dirname objfiles/mqttTest1.0.0` && $(TAR) mqttTest1.0.0.tar mqttTest1.0.0 && $(COMPRESS) mqttTest1.0.0.tar) && $(MOVE) `dirname objfiles/mqttTest1.0.0`/mqttTest1.0.0.tar.gz . && $(DEL_FILE) -r objfiles/mqttTest1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: mocfiles/moc_client.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) mocfiles/moc_client.cpp
mocfiles/moc_client.cpp: mqttclient.h \
		client.h
	/usr/local/QtEmbedded-4.7.2-arm/bin/moc $(DEFINES) $(INCPATH) client.h -o mocfiles/moc_client.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: ui/qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) ui/qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

objfiles/main.o: main.cpp client.h \
		mqttclient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objfiles/main.o main.cpp

objfiles/mqttclient.o: mqttclient.cpp mqttclient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objfiles/mqttclient.o mqttclient.cpp

objfiles/client.o: client.cpp client.h \
		mqttclient.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objfiles/client.o client.cpp

objfiles/moc_client.o: mocfiles/moc_client.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o objfiles/moc_client.o mocfiles/moc_client.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:

