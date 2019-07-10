#-------------------------------------------------
#  Copyright 2019 ESRI
#
#  All rights reserved under the copyright laws of the United States
#  and applicable international laws, treaties, and conventions.
#
#  You may freely redistribute and use this sample code, with or
#  without modification, provided you include the original copyright
#  notice and use restrictions.
#
#  See the Sample code usage restrictions document for further information.
#-------------------------------------------------

INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD

ANDROID_PACKAGE_SOURCE_DIR = $$PWD

OTHER_FILES += \
    $$ANDROID_PACKAGE_SOURCE_DIR/res/drawable-ldpi/icon.png \
    $$ANDROID_PACKAGE_SOURCE_DIR/res/drawable-mdpi/icon.png \
    $$ANDROID_PACKAGE_SOURCE_DIR/res/drawable-hdpi/icon.png \
    $$ANDROID_PACKAGE_SOURCE_DIR/res/drawable-xhdpi/icon.png \
    $$ANDROID_PACKAGE_SOURCE_DIR/res/drawable-xxhdpi/icon.png

DISTFILES += \
    $$ANDROID_PACKAGE_SOURCE_DIR/AndroidManifest.xml \
    $$ANDROID_PACKAGE_SOURCE_DIR/gradle/wrapper/gradle-wrapper.jar \
    $$ANDROID_PACKAGE_SOURCE_DIR/gradlew \
    $$ANDROID_PACKAGE_SOURCE_DIR/build.gradle \
    $$ANDROID_PACKAGE_SOURCE_DIR/gradle/wrapper/gradle-wrapper.properties \
    $$ANDROID_PACKAGE_SOURCE_DIR/gradlew.bat

ANDROID_LIBS = $$dirname(QMAKE_QMAKE)/../lib
ANDROID_EXTRA_LIBS += \
    $$ANDROID_LIBS/libssl.so \
    $$ANDROID_LIBS/libcrypto.so
