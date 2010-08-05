require 'rubinstein/actions/movement'

module Rubinstein
  module Actions
    def self.included(base)
      base.send(:include,Rubinstein::Actions::Movement)
    end
  end
end
