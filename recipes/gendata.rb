script 'prepare' do
  cwd "/tmp"
  user node['hibench']['user']
  group node['hibench']['group']
  interpreter "bash"
  code <<-EOM
  cd #{node[:hibench][:home]}
  timeout #{node.hibench.timeout}s ./workloads/streamingbench/prepare/gendata.sh & timeout #{node.hibench.timeout}s ./workloads/streamingbench/spark/bin/run.sh
  EOM
end
