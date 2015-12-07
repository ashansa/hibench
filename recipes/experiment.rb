
script 'run_experiment' do
  cwd "/tmp"
  user node['hibench']['user']
  group node['hibench']['group']
  interpreter "bash"
  code <<-EOM
echo "checkout HiBench repo"
  EOM
end

