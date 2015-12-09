
script 'run_experiment' do
  cwd "/tmp"
  user node['hibench']['user']
  group node['hibench']['group']
  interpreter "bash"
  code <<-EOM
  cwd "/tmp/hibench"
wget https://s3-eu-west-1.amazonaws.com/hibench-compiled-jar/HiBench.zip
echo "downloaded hibench"
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

