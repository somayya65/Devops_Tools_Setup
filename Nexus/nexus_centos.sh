yum install wget -y && yum install unzip -y && yum install java -y &&

wget https://download.sonatype.com/nexus/oss/nexus-2.15.1-02-bundle.zip &&

unzip nexus-2.15.1-02-bundle.zip &&

rm nexus-2.15.1-02/bin/nexus &&

cp nexus nexus-2.15.1-02/bin/ &&

chmod +x nexus-2.15.1-02/bin/nexus

bash nexus-2.15.1-02/bin/nexus restart
