# Generated by cucumber-sinatra. (2014-12-18 14:55:46 +0000)

ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/rps.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app = RockPaperScissorsSinatra

class RockPaperScissorsSinatraWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers
end

World do
  RockPaperScissorsSinatraWorld.new
end
