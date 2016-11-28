#!/usr/bin/env puma

directory '/home/admin/www/rails/production/current'
rackup "/home/admin/www/rails/production/current/config.ru"
environment 'production'

pidfile "/home/admin/www/rails/production/shared/tmp/pids/puma.pid"
state_path "/home/admin/www/rails/production/shared/tmp/pids/puma.state"
stdout_redirect '/home/admin/www/rails/production/shared/log/puma_access.log', '/home/admin/www/rails/production/shared/log/puma_error.log', true
port 9292


threads 4,16

bind 'unix:///home/admin/www/rails/production/shared/tmp/sockets/puma.sock'

workers 0



prune_bundler


on_restart do
puts 'Refreshing Gemfile'
ENV["BUNDLE_GEMFILE"] = "/home/admin/www/rails/production/current/Gemfile"
end

