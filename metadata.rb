name             'hibench'
maintainer       "hibench"
maintainer_email "ashansa.perera@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs hibench'
version          "0.1"

recipe            "hibench::install", "Experiment setup for hibench"
recipe            "hibench::experiment",  "configFile=; Experiment name: experiment"
recipe            "hibench::gendata", "generate data stream"
recipe            "hibench::un-spark-streaming", "Run spark stream processing"


depends "kagent"
depends "apt"

%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "hibench/group",
:description => "group parameter value",
:type => "string"

attribute "hibench/user",
:description => "user parameter value",
:type => "string"

attribute "hibench/map/parallelism",
:description => "parallelism for mapper",
:type => "string"

attribute "hibench/map/shuffle",
:description => "parallelism for shuffle",
:type => "string"

attribute "hibench/data/scale",
:description => "can be tiny, small, large, huge, gigantic, bigdata",
:type => "string"

attribute "hadoop/home",
:description => "path to hadoop home",
:type => "string"

attribute "hadoop/master/url",
:description => "hadoop master url",
:type => "string"

attribute "hadoop/MR/version",
:description => "can be hadoop1 or hadoop2",
:type => "string"

attribute "spark/home",
:description => "path to spark home",
:type => "string"

attribute "spark/master/url",
:description => "spark master url",
:type => "string"

attribute "spark/version",
:description => "can be spark1.2 or spark1.3",
:type => "string"

attribute "zookeeper/url",
:description => "zookeeper url",
:type => "string"

attribute "kafka/home",
:description => "path to kafka home",
:type => "string"

attribute "kafka/brokerList",
:description => "kafka brokerList. Comma seperated host:port",
:type => "string"


