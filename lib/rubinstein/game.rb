module Rubinstein
  class Game

    def self.run(world)
      runner = Runner.new(world)
      puts "Welcome to the text adventure game!"
      print "> " 
      until (input = $stdin.gets.chomp) == "exit"
        runner.__execute(input.downcase) 
        print "> "
      end
      puts "Thanks for playing"
    end

  end
end
