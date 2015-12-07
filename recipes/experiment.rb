
script 'run_experiment' do
  cwd "/tmp"
  user node['hibench']['user']
  group node['hibench']['group']
  interpreter "bash"
  code <<-EOM
echo "checkout HiBench repo"
sudo apt-get install maven
echo "maven installed"
  EOM
end

git "/tmp" do
  repository "git://github.com/shelan/HiBench.git"
  reference "master"
  action :sync
end

