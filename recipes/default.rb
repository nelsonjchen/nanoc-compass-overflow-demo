#
# Cookbook Name:: nanoc-compass-overflow-demo
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

bash 'demo_bundler' do
  cwd '/home/vagrant/demo'
  user 'vagrant'
  code 'bundle'
  action :nothing
end

git '/home/vagrant/demo/' do
  repository 'https://github.com/crazysim/nanoc-foundation-blog.git'
  reference 'overflow-demo'
  action :sync
  user 'vagrant'
  group 'vagrant'
  notifies :run, 'bash[demo_bundler]', :immediately
end

