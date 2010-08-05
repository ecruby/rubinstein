module Rubinstein
  module Actions
    module Movement

      def walk(*args)
        args.flatten!
        if !args[0]
          __puts "Which way?" 
        elsif @__world.player.location.exits[args[0]]
          @__world.player.location = @__world.locations[@__world.player.location.exits[args[0]]]
          look
        else
          __puts "You can't go that way"
        end
        __handle!
      end

    end
  end
end
