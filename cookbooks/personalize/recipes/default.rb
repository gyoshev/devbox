hostname = 'dev.gyoshev.net'
user = "vagrant"
group = "vagrant"
home = "/home/#{user}"

file '/etc/hostname' do
  content "#{hostname}\n"
end

service 'hostname' do
  action :restart
end

file '/etc/hosts' do
  content "127.0.0.1 localhost #{hostname}\n"
end

package 'vim'
package 'git-core'
package 'screen'

git "#{home}/config/" do
  repository "git://github.com/gyoshev/config.git"
  reference "master"
  action :sync
  user user
  group group
end

execute "config" do
  command "bash install.sh"
  cwd "#{home}/config/"
  user user
  group group
  environment ({ 'HOME' => home })
end

