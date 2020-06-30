# defining class Player
class Player
  # @@ are variables that are the same for all of the same class
  # @@ is also not a const
  @@game = "fun"
  def initialize(name_in, type, wepen)
    # variables for each class
    @name = name_in
    @origanal_name = @name
    @type = type
    @wepen = wepen
    @level = 0
  end
  # gets and seters
  def self.game
    @@game
  end
  def self.game=(game)
    @@game = game
  end
  def game
    @@game
  end
  def name
    @name
  end
  def name=(name)
    @name = name
  end
  def type
    @type
  end
  # add restitches when caging and getting things
  def type=(type)
    if @level >= 100
      @type = type
      @level = @level-100
      puts "#{@name} is now a #{@type}"
      puts "#{@name} level is now #{@level}"
    else
      puts "level is to low (level 100 is needed)"
    end
  end
  def level
    @level
  end
  def level=(level)
    puts "you can not change the level this way"
  end
  # doing things
  def who_is_this()
    puts "The player name is #{@name} and the player is #{@type}"
    puts "The player game is #{@@game} and the player level is #{@level}"
    @level = @level+10
  end
end

timbre_player = Player.new("Timbre Freeman", "human", "sord")
# we can not just get
puts timbre_player.name
puts timbre_player.type
timbre_player.type = "elf"
puts timbre_player.type
puts timbre_player.level
timbre_player.level = 100
timbre_player.who_is_this()
puts timbre_player.level
for i in 1...10
  timbre_player.who_is_this()
  puts timbre_player.level
end
timbre_player.type = "elf"
puts timbre_player.type
puts Player.game
puts timbre_player.game
Player.game = "noFun"
puts Player.game
puts timbre_player.game