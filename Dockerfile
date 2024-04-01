FROM debezium/connect:2.4.2.Final

# FROM dbz_connect
COPY /debezium/oracle_driver/ojdbc8.jar /kafka/libs/ojdbc8.jar

# For Avro Converter
# Download jar in https://www.confluent.io/hub/confluentinc/kafka-connect-avro-converter (version : 7.5.3)
COPY /debezium/avro_confluent/* /kafka/connect/avro_confluent_inc/
