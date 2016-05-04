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

if !defined?(::Pry)
  # Hack to load brice, even from inside a bundle without the brice gem
  require Dir["#{Gem.dir}/gems/brice-*/lib/brice.rb"].first
  if defined?(::Brice)
    Brice.init do |config|
      config.history.path = '~/.irb_history'
      config.history.size = 1000
      config.history.merge = true
    end
  end
end
