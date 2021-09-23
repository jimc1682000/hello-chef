# Run this err.erb with following command to correct errors
# sudo chef-client -zr "recipe[apache::err]"

package 'httpd' do
  action :install
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  action :create
end

service 'httpd' do
  action [ :enable,:start ]
end
