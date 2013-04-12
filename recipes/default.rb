#
# Cookbook Name:: nanoc-compass-overflow-demo
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

git '/home/vagrant/demo/' do
  repository 'https://github.com/crazysim/nanoc-foundation-blog.git'
  reference 'overflow-demo'
  action :sync
  notifies :run, 'script[demo-bundler]', :immediately
  user 'vagrant'
  group 'vagrant'
end

script 'demo-bundler' do
  interpreter 'zsh'
  cwd '/home/vagrant/demo'
  user 'vagrant'
  code 'bundle'
  action :nothing
end
