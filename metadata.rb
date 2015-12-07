name             'hibench'
maintainer       "hibench"
maintainer_email "ashansa.perera@gmail.com"
license          "Apache v2.0"
description      'Installs/Configures/Runs hibench'
version          "0.1"

recipe            "hibench::install", "Experiment setup for hibench"
recipe            "hibench::experiment",  "configFile=; Experiment name: experiment"


depends "kagent"
depends "apt"
depends "maven"

%w{ ubuntu debian rhel centos }.each do |os|
  supports os
end



attribute "hibench/group",
:description => "group parameter value",
:type => "string"

attribute "hibench/user",
:description => "user parameter value",
:type => "string"


