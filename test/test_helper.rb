ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../../../../config/environment")
require 'test_help'
require 'test/unit'
require 'action_view/test_case'
require 'mocha'
require 'shoulda'

require 'factory_girl'
require File.expand_path(File.dirname(__FILE__) + '/factories')

begin require 'redgreen'; rescue LoadError; end

class Test::Unit::TestCase
  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures  = false
end
