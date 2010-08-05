$:.unshift(File.dirname(__FILE__)+'/../../lib')
require 'aruba'
require 'rubinstein'

begin
  require 'rspec/expectations'
rescue LoadError
  require 'spec/expectations'
end
