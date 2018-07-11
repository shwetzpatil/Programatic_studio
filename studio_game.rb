#   def time
#     current_time = Time.new
#     current_time.strftime("%I:%M:%S")
#   end
  
#   def say_hello(name, health=100)
#     "I'm #{name.capitalize} with a health of #{health} as of #{time}"
#   end
  
#   puts say_hello("larry", 60)
#   puts say_hello("curly", 125)
#   puts say_hello("moe")
#   puts say_hello("shemp", 90)
  
class Player
  attr_accessor :name 
  attr_reader :health
    def initialize (name, health=100)
      @name = name.capitalize
      @health = health
    end
    def score
      @health + @name.length
    end
    def w00t
      @health += 15
      puts self
      puts "#{@name} got w00ted"
    end

    def blam
      @health -= 10
      puts "#{@name} got blammed!"
    end
    def to_s
      "I'm #{@name} with a health of #{@health} and a #{score} ."
    end
end

player_1 = Player.new("shweta",150)
player_1.w00t


player_2 = Player.new("sagar",200)
player_2.blam
puts player_2

player_3 = Player.new("sns")
player_3.w00t
puts player_3

puts player_1.name.upcase
puts player_1.health.to_f.class
player_1.name = "chiu"
puts player_1.name
