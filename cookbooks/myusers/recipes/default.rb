#
# Cookbook:: myusers
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# user 'user1' do
#     comment
#     uid
#     gid '1'
#     home
#     shell
#     action :create
# end

# group 'gorup1' do
#     members 'user1'
# end

search('users', 'platform:centos').each do |user_data|
    user user_data['id'] do
        comment user_data['comment']
        uid user_data['uid']
        gid user_data['gid']
        home user_data['home']
        shell user_data['shell']
    end
end

# search('groups', 'id:chefs').each do |chef_group|
#     chef_group['members'].each do |chef_member|
#         search('users', "id:#{chef_member}").each do |chef_user|
#             user chef_user['id'] do
#                 comment chef_user['comment']
#                 uid chef_user['uid']
#                 gid chef_user['gid']
#                 home chef_user['home']
#                 shell chef_user['shell']
#             end
#             group "#{chef_group['id']}" do
#                 append true
#                 members "#{chef_user['id']}"
#             end
#         end
#     end
# end

include_recipe 'myusers::groups'