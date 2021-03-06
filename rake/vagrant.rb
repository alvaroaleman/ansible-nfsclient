require 'rake'
require 'rspec/core/rake_task'


desc "Bring up Vagrant VM"
task :up do
  sh 'vagrant', 'up', '--no-provision', '--provider', ENV['ANSIBLE_NFSCLIENT_VAGRANT_PROVIDER']
end


desc "Provision Vagrant VM"
task :provision => [:up] do
  sh %{vagrant provision}
end


desc "Cleanup Vagrant VM environment"
task :clean do
  if not ENV['RAKE_ANSIBLE_VAGRANT_DONT_CLEANUP'] == '1'
    sh %{vagrant halt}
    sh %{vagrant destroy --force}
  end
end


desc "SSH into the Vagrant VM"
task :ssh do
  sh %{vagrant ssh}
end
