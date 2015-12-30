script 'prepare' do
  cwd "/tmp"
  user node['hibench']['user']
  group node['hibench']['group']
  interpreter "bash"
  code <<-EOM
  cd #{node[:hibench][:home]}
  ./workloads/streamingbench/prepare/gendata.sh & ./workloads/streamingbench/spark/bin/run.sh
  EOM
end
