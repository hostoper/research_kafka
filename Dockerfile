
# Using Confluent
FROM confluentinc/cp-kafka-connect:7.6.1

RUN confluent-hub install confluentinc/kafka-connect-hdfs3:1.1.30 --no-prompt --verbose
RUN confluent-hub install confluentinc/kafka-connect-hdfs3-source:2.5.17 --no-prompt --verbose
RUN confluent-hub install confluentinc/kafka-connect-hdfs3-source:2.5.17 --no-prompt --verbose
RUN confluent-hub install debezium/debezium-connector-postgresql:2.5.3 --no-prompt --verbose
RUN confluent-hub install debezium/debezium-connector-sqlserver:2.4.2 --no-prompt --verbose
RUN confluent-hub install debezium/debezium-connector-mongodb:2.4.2 --no-prompt --verbose
RUN confluent-hub install debezium/debezium-connector-mysql:2.4.2 --no-prompt --verbose

COPY /debezium/debezium-connector-oracle/* /usr/share/confluent-hub-components/debezium-connector-oracle/
COPY /debezium/oracle_driver/ojdbc8.jar /usr/share/java/kafka/ojdbc8.jar

# # Using Debezium 
# FROM debezium/connect:2.4.2.Final

# # FROM dbz_connect
# COPY /debezium/oracle_driver/ojdbc8.jar /kafka/libs/ojdbc8.jar

# # For Avro Converter
# # Download jar in https://www.confluent.io/hub/confluentinc/kafka-connect-avro-converter (version : 7.5.3)
# COPY /debezium/avro_confluent/* /kafka/connect/avro_confluent_inc/
# COPY /debezium/confluentinc-kafka-connect-hdfs3-1.1.15/* /kafka/connect/confluentinc-kafka-connect-hdfs3-1.1.15
