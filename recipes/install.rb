#
# DO NOT EDIT THIS FILE DIRECTLY - UNLESS YOU KNOW WHAT YOU ARE DOING
#
user node[:hibench][:user] do
  action :create
  supports :manage_home => true
  home "/home/#{node[:hibench][:user]}"
  shell "/bin/bash"
  not_if "getent passwd #{node[:hibench]['user']}"
end

group node[:hibench][:group] do
  action :modify
  members ["#{node[:hibench][:user]}"]
  append true
end


private_ip = my_private_ip()
public_ip = my_public_ip()



# Pre-Experiment Code


# Configuration Files

