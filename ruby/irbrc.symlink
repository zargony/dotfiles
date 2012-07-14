# Ruby gems
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
if !defined?(::Rails) && ENV['RAILS_ENV'] && !defined?(RAILS_DEFAULT_LOGGER)
  puts 'Rails 2.x detected. Redirecting logger to screen.'
  require 'logger'
  RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end

# Hack to load wirble, even from inside a bundle without the wirble gem
require Dir["#{Gem.dir}/gems/wirble-*/lib/wirble.rb"].first
if defined?(::Wirble)
  Wirble.init
  Wirble.colorize
end
