$:.unshift(File.dirname(__FILE__))
$:.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'spec'
require 'spec/autorun'

require 'rubinstein'

Spec::Runner.configure do |config|
  config.mock_with :mocha
end
