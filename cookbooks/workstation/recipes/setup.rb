package 'vim-enhanced'
package 'nano'
package 'emacs'

package 'tree' do
  action :install
end

package 'git'
package 'ntp'

#node['ipaddress']
#node['memory']['total']

# pritn statement 'I have 4 apples'
#apple_count = 4
#puts "I have #{apple_count} apples"

file '/etc/motd' do
  content "This server is the property of Jimmy
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}
"
  action :create
  owner 'root'
  group 'root'
end
