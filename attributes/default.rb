# 'user' and 'group' define the unix user and group, respectively, 
# that the experiment will be excecuted as.
default[:hibench][:group] = "hibench"
default[:hibench][:user] = "hibench"
default[:hibench][:home] = "/tmp/HiBench"
default[:hibench][:map][:parallelism] = "2"
default[:hibench][:shuffle][:parallelism] = "1"
default[:hibench][:data][:scale] = "tiny"
default[:hibench][:timeout] = "360"


default[:hadoop][:home] = "/srv/hadoop"
default[:hadoop][:master][:url] = "hdfs://172.28.128.5:8020"
default[:hadoop][:MR][:version] = "hadoop2"


default[:spark][:home] = "/srv/spark-1.3.1-bin-hadoop2.4"
default[:spark][:master][:url] = "spark://172.28.128.5:7077"
default[:spark][:version] = "spark1.3"

default[:zookeeper][:url] = "127.0.0.1:2181"

default[:kafka][:home] = "/opt/kafka-0.8.1.1"
default[:kafka][:brokerList] = "127.0.0.1:6667"
