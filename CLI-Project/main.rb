require_relative 'lib/cli.rb'
require_relative 'lib/api.rb'
require_relative 'lib/user.rb'
require "bcrypt"

CLI.new.start
