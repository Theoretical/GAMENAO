# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
# ENV['RAILS_ENV'] ||= 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  config.time_zone = 'UTC'
  config.action_controller.session = {
    :session_key => '_bakavision_session',
    :secret      => '659252034d4c2957835579c1bef21278087e817c65e436d5062c960f6df047bb667248c4ea70cd00ba0dee1a1bfab07fd65c8cf6e5beded4ca95019cc8481c7b'
  }
  config.action_controller.session_store = :active_record_store

  config.gem 'rcov', :version => '0.8.1.2.0'
  config.gem 'rubyzip', :lib => 'zip/zipfilesystem', :version => '0.9.1'
  config.gem 'rspec', :lib => 'spec', :version => '1.2.6'
  config.gem 'rspec-rails', :lib => 'spec/rails', :version => '1.2.6'

end
