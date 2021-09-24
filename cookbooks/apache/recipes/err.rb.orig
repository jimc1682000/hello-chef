# Run this err.erb with following command to correct errors
# sudo chef-client -zr "recipe[apache::err]"

package 'http' do
  action :install
end

template '/var/www/html/index.html' do
  sourced 'index1.html.erb'
  action : create
end

service 'http' do
  action :start
  action :enable
end
