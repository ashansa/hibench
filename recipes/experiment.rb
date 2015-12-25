
script 'run_experiment' do
  cwd "/tmp"
  user node['hibench']['user']
  group node['hibench']['group']
  interpreter "bash"
  code <<-EOM
  cwd "/tmp/hibench"
  echo "$(date)" > /home/vagrant/time.txt
wget https://s3-eu-west-1.amazonaws.com/hibench-compiled-jar/HiBench.zip
echo "downloaded hibench"
echo "$(date)" > /home/vagrant/time2.txt
  EOM
end


file "#{node[:hibench][:home]}/conf/99-user_defined_properties.conf" do 
  owner node[:hibench][:user]
  action :delete
end


template "#{node[:hibench][:home]}/conf/99-user_defined_properties.conf" do
    source "99-user_defined_properties.conf.erb"
    owner node[:hibench][:user]
    group node[:hibench][:group]
    mode 0775
end

# echo "checkout HiBench repo"
# sudo apt-get install maven
# echo "maven installed"

#git "/tmp" do
 # repository "git://github.com/shelan/HiBench.git"
  #reference "master"
  #action :sync
#end

