require 'rubygems'

require 'logger'
$console_logger = Logger.new(STDOUT)
if defined?(::Rails)
  puts ' * Rails detected. Redirecting logger to screen.'
  Rails.logger = $console_logger
end
if defined?(::ActiveRecord)
  puts ' * ActiveRecord detected. Redirecting logger to screen.'
  ActiveRecord::Base.logger = $console_logger
end
if defined?(::Mongoid)
  puts ' * Mongoid detected. Redirecting logger to screen.'
  Mongoid.logger = $console_logger
end

require 'irb/completion'
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 1000

require 'wirb'
Wirb.start
