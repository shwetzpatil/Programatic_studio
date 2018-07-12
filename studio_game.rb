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
      puts self
      puts "#{@name} got blammed!"
    end
    def to_s
      "I'm #{@name} with a health of #{@health} and a score #{score} ."
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
puts "Name : #{player_1.name}"


players = [player_1,player_2,player_3]
puts "There are #{players.length} in the game."
puts players

players.each do |player|
  puts player.w00t
  puts player.blam
  puts player
end

players.each do |player|
  puts player.health
end


class Game
attr_reader :title

  def initialize(title)
    @title = title.upcase
    @players = []
  end

  def add_player(new_player)
    @players << new_player
  end

  def play
    puts "There are #{@players.length} players in #{@title}"
    @players.each do |player|
      puts player
    end

    @players.each do |player|
      player.blam
      player.w00t
      puts player
    end
  end
end

player_1 = Player.new("moe")
player_2 = Player.new("larry", 60)
player_3 = Player.new("curly", 125)
    

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player_1)
knuckleheads.add_player(player_2)
knuckleheads.add_player(player_3)
knuckleheads.play

puts knuckleheads.title

chipmunks = Game.new("Chipmunks")
player_1 = Player.new("Aaa",0)
player_2 = Player.new("Bbb", 60)
player_3 = Player.new("Ccc", 125)

puts "Showing players"
puts players = player_1,player_2,player_3

puts chipmunks.add_player(players)
chipmunks.play
puts chipmunks.title