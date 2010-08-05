require 'rubinstein/actions'

module Rubinstein
  class Runner < BasicObject
    class << self
      def const_missing(name)
        Kernel.const_get(name)
      end
    end
    include Rubinstein::Actions

    attr_accessor :__world, :__handled

    def initialize(world)
      @__world = world
    end

    def __handle!
      @__handled = true
    end
    
    def __execute(string)
      @__handled = false
      instance_eval(string)
      __puts "I don't understand" unless @__handled
    end

    def __puts(message)
      $stdout.puts(message)
    end

    def method_missing(name,*args)
      return *args.flatten.unshift(name.to_s)
    end

    def look(*args)
      __puts @__world.player.location.instance_eval(:@description)
      __handle!
    end

  end
end
