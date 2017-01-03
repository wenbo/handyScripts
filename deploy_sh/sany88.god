rails_env  = "production"
rails_root  = File.dirname(__FILE__)

  [8383].each do |port|
  God.watch do |w|
  w.name            = "customer_#{port}"
  w.dir             = "#{rails_root}"
  w.group           = "customer"
  w.interval        = 5.seconds
  w.start           = "bundle exec puma -p #{port} -t 2:20 -e #{rails_env}"
  w.env             = {"QUEUE"=>"*", "RAILS_ENV"=>rails_env}
  w.grace           = 10.seconds
#w.log             = "#{rails_root}/log/god.log"
  w.err_log         = "#{rails_root}/log/god_error.log"

  w.start_if do |start|
  start.condition(:process_running) do |c|
  c.running = false
  end
  end

  w.restart_if do |restart|
  restart.condition(:memory_usage) do |c|
  c.above = 190.megabytes
  end

# restart.condition(:http_response_code) do |c|
#      c.host = 'localhost'
#      c.port = '8888'
#      c.path = '/heartbeat'
#      c.code_is_not = %w(200 301 302)
# end
  end
  end
  end

