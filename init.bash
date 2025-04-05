sdk use java 17.0.12-tem
sudo systemctl start kafka.service
cd /bin
./kafka-topics.sh --create --topic check-events --bootstrap-server localhost:9092
./kafka-topics.sh --create --topic ingest-start-events --bootstrap-server localhost:9092
./kafka-topics.sh --create --topic register-updated-start --bootstrap-server localhost:9092
./kafka-topics.sh --create --topic ingest-finished-events --bootstrap-server localhost:9092
./kafka-topics.sh --create --topic update-parameters --bootstrap-server localhost:9092

sudo systemctl start postgresql.service

sdk use java 11.0.26-tem
export SPARK_HOME=/opt/apache-spark/
/home/vmchura/apache-livy-0.8.0-incubating_2.12-bin/bin/livy-server start

# to start nifi, java 21
sudo archlinux-java set java-21-openjdk
sudo systemctl start nifi


#KAFKA_CLUSTER_ID="$(/bin/kafka-storage.sh random-uuid)"
#echo $KAFKA_CLUSTER_ID
#/bin/kafka-storage.sh format --standalone -t $KAFKA_CLUSTER_ID -c /etc/kafka/server.properties

#sudo -u kafka touch /var/lib/kafka/logs/testfile
#sudo -u kafka rm /var/lib/kafka/logs/testfile

# Restart Kafka
#sudo systemctl restart kafka

#sudo systemctl status kafka.service
#sudo systemctl start kafka.service
#sudo systemctl status kafka.service

#export KAFKA_LOG4J_OPTS="-Dlog4j2.configurationFile=file:/etc/kafka/log4j2.yaml"