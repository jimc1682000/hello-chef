#
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2021, The Authors, All Rights Reserved.

package 'httpd' do
  action :install
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
end

#template '/var/www/html/index.html' do
#  source 'index.html.erb'
#  variables(
#    :name => 'Jimmy Chen'
#  )
#  action :create
#end

service 'httpd' do
  action [ :enable, :start ]
end
