package 'vim-enhanced'
package 'nano'
package 'emacs'

package 'tree' do
  action :install
end

package 'git'
package 'ntp'

file '/etc/motd' do
  content 'This server is the property of Jimmy'
  action :create
  owner 'root'
  group 'root'
end
