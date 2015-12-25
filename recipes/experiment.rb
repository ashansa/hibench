
script 'run_experiment' do
  cwd "/tmp"
  user node['hibench']['user']
  group node['hibench']['group']
  interpreter "bash"
  code <<-EOM
  cwd "/tmp/hibench"
  echo "$(date)" > /home/vagrant/time.txt
wget https://s3-eu-west-1.amazonaws.com/hibench-compiled-jar/HiBench-spark-1.3.zip
unzip HiBench-spark-1.3.zip
echo "downloaded hibench"
echo "$(date)" > /home/vagrant/time2.txt
  EOM
end


# echo "checkout HiBench repo"
# sudo apt-get install maven
# echo "maven installed"

#git "/tmp" do
 # repository "git://github.com/shelan/HiBench.git"
  #reference "master"
  #action :sync
#end

