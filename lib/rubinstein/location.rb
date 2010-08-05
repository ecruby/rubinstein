module Rubinstein
  class Location

    attr_accessor :name, :description, :exits

    def initialize(name,&block)
      @name       = name
      @exits      = {}

      instance_eval &block
    end

    def description(prose)
      @description = prose
    end

    ["north","south","east","west"].each do |direction|
      class_eval <<-END
        def #{direction}(location)
          @exits["#{direction}"] = location
        end
      END
    end

  end
end
