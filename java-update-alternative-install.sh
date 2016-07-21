#! /bin/sh

if [ "$(id -u)" != "0" ]; then
   echo -e "$ROUGE""Ce script doit être lancé en root (avec les droits administrateurs)" 1>&2
   exit 1
fi

JAVA_FOLDER=/opt/java/jdk1.8.0_66
ALTERNATIVE_NUMBER=18066

update-alternatives --install /usr/bin/java java $JAVA_FOLDER/bin/java $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/keytool keytool $JAVA_FOLDER/bin/keytool $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/pack200 pack200 $JAVA_FOLDER/bin/pack200 $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/rmid rmid $JAVA_FOLDER/bin/rmid $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/rmiregistry rmiregistry $JAVA_FOLDER/bin/rmiregistry $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/unpack200 unpack200 $JAVA_FOLDER/bin/unpack200 $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/orbd orbd $JAVA_FOLDER/bin/orbd $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/servertool servertool $JAVA_FOLDER/bin/servertool $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/tnameserv tnameserv $JAVA_FOLDER/bin/tnameserv $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/policytool policytool $JAVA_FOLDER/bin/policytool $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/appletviewer appletviewer $JAVA_FOLDER/bin/appletviewer $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/extcheck extcheck $JAVA_FOLDER/bin/extcheck $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/idlj idlj $JAVA_FOLDER/bin/idlj $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jar jar $JAVA_FOLDER/bin/jar $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jarsigner jarsigner $JAVA_FOLDER/bin/jarsigner $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/javac javac $JAVA_FOLDER/bin/javac $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/javadoc javadoc $JAVA_FOLDER/bin/javadoc $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/javah javah $JAVA_FOLDER/bin/javah $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/javap javap $JAVA_FOLDER/bin/javap $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jcmd jcmd $JAVA_FOLDER/bin/jcmd $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jconsole jconsole $JAVA_FOLDER/bin/jconsole $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jdb jdb $JAVA_FOLDER/bin/jdb $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jhat jhat $JAVA_FOLDER/bin/jhat $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jinfo jinfo $JAVA_FOLDER/bin/jinfo $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jmap jmap $JAVA_FOLDER/bin/jmap $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jps jps $JAVA_FOLDER/bin/jps $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jrunscript jrunscript $JAVA_FOLDER/bin/jrunscript $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jsadebugd jsadebugd $JAVA_FOLDER/bin/jsadebugd $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jstack jstack $JAVA_FOLDER/bin/jstack $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jstat jstat $JAVA_FOLDER/bin/jstat $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jstatd jstatd $JAVA_FOLDER/bin/jstatd $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/native2ascii native2ascii $JAVA_FOLDER/bin/native2ascii $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/rmic rmic $JAVA_FOLDER/bin/rmic $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/schemagen schemagen $JAVA_FOLDER/bin/schemagen $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/wsgen wsgen $JAVA_FOLDER/bin/wsgen $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/wsimport wsimport $JAVA_FOLDER/bin/wsimport $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/xjc xjc $JAVA_FOLDER/bin/xjc $ALTERNATIVE_NUMBER
update-alternatives --install /usr/bin/jexec jexec $JAVA_FOLDER/jre/lib/jexec $ALTERNATIVE_NUMBER

# Add plugins to browsers
mkdir -p /usr/lib/mozilla/plugins
cd /usr/lib/mozilla/plugins && ln -s $JAVA_FOLDER/jre/lib/amd64/libnpjp2.so
echo "Firefox plugin set"

mkdir -p /opt/google/chrome/plugins
cd /opt/google/chrome/plugins && ln -s $JAVA_FOLDER/jre/lib/amd64/libnpjp2.so
echo "Chrome plugin set"

mkdir -p /usr/lib/chromium-browser/plugins
cd /usr/lib/chromium-browser/plugins && ln -s $JAVA_FOLDER/jre/lib/amd64/libnpjp2.so
echo "Chromium plugin set"
