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

service 'httpd' do
  action [ :enable, :start ]
end
