#
# Cookbook:: users
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
search("users", "*:*").each do |user_data|
    user user_data["id"] do
        comment user_data["comment"]
        uid user_data["uid"]
        gid user_data["gid"]
        home user_data["home"]
        shell user_data["shell"]
    end
end
include_recipe "users::groups"