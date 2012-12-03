IRB.conf[:USE_READLINE] = true

if ENV['RAILS_ENV']
  IRB.conf[:IRB_RC] = Proc.new do
    #rails 2.3.8
    ActiveRecord::Base.connection.instance_variable_set :@logger, Logger.new(STDOUT)
  end
end
