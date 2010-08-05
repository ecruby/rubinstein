module Rubinstein
  class World

    attr_accessor :name, :locations, :player

    def initialize(name,&block)
      @name       = name
      @locations  = {}
      @player     = Player.new

      instance_eval &block
    end

    def location(name,&block)
      @locations[name] = Location.new(name,&block)
    end

    def start(location)
      @player.location = @locations[location]
    end

  end
end
