require 'rubygems'

if defined?(::Rails)
  puts 'Rails detected. Redirecting logger to screen.'
  require 'logger'
  Rails.logger = Logger.new(STDOUT)
end
if defined?(::ActiveRecord)
  puts 'ActiveRecord detected. Redirecting logger to screen.'
  require 'logger'
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end
if defined?(::Mongoid)
  puts 'Mongoid detected. Redirecting logger to screen.'
  require 'logger'
  Mongoid.logger = Logger.new(STDOUT)
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
