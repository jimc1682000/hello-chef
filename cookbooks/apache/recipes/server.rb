#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

remote_file '/var/www/html/capoo.jpg' do
  source 'https://upload.wikimedia.org/wikipedia/en/8/88/Bugcat_Capoo.jpg'
end

#cookbook_file '/var/www/html/index.html' do
#  source 'index.html'
#end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  variables(
    :name => 'Jimmy Chen'
  )
  action :create
end

#bash 'inline script' do
#  user 'root'
#  code 'mkdir -p /var/www/mysites/ && chown -R apache /var/www/mysites/'
#  #not_if '[ -d /var/www/mysites/ ]'
#  # Ruby style
#  not_if do
#    File.directory?('/var/www/mysites/')
#  end
#end

#execute 'run a script' do
#  user 'root'
#  command <<-EOH
#  mkdir -p /var/www/mysites/
#  chown -R apache /var/www/mysites/
#  EOH
#  not_if
#end

#execute 'run script' do
#  user 'root'
#  command './myscript.sh'
#  not_if
#end

directory '/var/www/mysites' do
  owner 'apache'
  recursive true
  mode '0644'
end

service 'httpd' do
  action [ :enable, :start ]
end
