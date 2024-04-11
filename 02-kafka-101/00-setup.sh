# Step 1: Download the binary file from kafka website
# Step 2: Extract the file and move the extracted folder to the directory C drive (location - C:\)

# Step 3: Go to the following path and open CMD - C:\kafka_2.13-3.7.0\bin\windows

# Step - 4: Open different tabs over there and run the following commands

zookeeper-server-start.bat ..\..\config\zookeeper.properties

kafka-server-start.bat ..\..\config\server.properties

kafka-topics.bat --create --topic my-topic --bootstrap-server localhost:9092 --replication-factor 1 --partitions 3

kafka-console-producer.bat --broker-list localhost:9092 --topic my-topic

kafka-console-consumer.bat --bootstrap-server localhost:9092 --topic my-topic --from-beginning
