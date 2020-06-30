#################################################################
#
#  Name:        Timbre Freeman
#  Assignment:  Ruby Classes
#  Date:        01/22/2020
#  Class:       CIS 283
#  Description: Make and use Perosn, Address and Character Class
#
#################################################################

# Person Class
class Person
  # first_name, last_name, age, hair_color, eye_color
  def initialize (first_name, last_name, age, hair_color, eye_color)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @hair_color = hair_color
    @eye_color = eye_color
  end

  # getter and setter
  def first_name
    @first_name
  end
  def first_name=(first_name)
    @first_name = first_name
  end
  def last_name
    @last_name
  end
  def last_name=(last_name)
    @last_name = last_name
  end
  def age
    @age
  end
  def age=(age)
    @age = age
  end
  def hair_color
    @hair_color
  end
  def hair_color=(hair_color)
    @hair_color = hair_color
  end
  def eye_color
    @eye_color
  end
  def eye_color=(eye_color)
    @eye_color = eye_color
  end

  # Methods - to_s()
  # to_s() - print out a nice representation of the attributes of this person
  def to_s
    puts "#{first_name} #{last_name} is #{age} old, has #{hair_color} hair color and has #{eye_color} eye color"
  end
end

# Address Class
class Address
  # line1, line2, city, state, zip
  def initialize(line1,line2="",city,state,zip)
    @line1 = line1
    @line2 = line2
    @city = city
    @state = state
    @zip = zip
  end

  # getter and setter
  def line1
    @line1
  end
  def line1=(line1)
    @line1 = line1
  end
  def line2
    @line2
  end
  def line2=(line2)
    @line2 = line2
  end
  def city
    @city
  end
  def city=(city)
    @city = city
  end
  def state
    @state
  end
  def state=(state)
    @state = state
  end
  def zip
    @zip
  end
  def zip=(zip)
    @zip = zip
  end

  # method - to_s()
  # to_s() - print out a nice representation of the attributes of this person
  def to_s
    puts @line1
    puts @line2
    puts "#{city}, #{state}, #{zip}"
  end
end

# Character Class
class Character
  # name, race, hit_points, weapons[] (array of weapon names), gold, clothing[] (array of clothing items)
  def initialize(name,race,hit_points,gold,weapons=Array.new,clothing=Array.new)
    @name = name
    @race = race
    @hit_points = hit_points
    @weapons = weapons
    @gold = gold
    @clothing = clothing
  end

  # getter and setter (no setter for weapons and clothing)
  def name
    @name
  end
  def name=(name)
    @name = name
  end
  def race
    @race
  end
  def race=(race)
    @race = race
  end
  def hit_points
    @hit_points
  end
  def hit_points=(hit_points)
    @hit_points = hit_points
  end
  def gold
    @gold
  end
  def gold=(gold)
    @gold = gold
  end
  def weapons
    @weapons
  end
  # When I use some one else library or code it was vary helpful to have a error with tips how to fix my error when trying to do something
  def weapons=(*)
    puts "Error need to use add_weapon(weapon_name) or drop_weapon(weapon_name)"
  end
  def clothing
    @clothing
  end
  def clothing=(*)
    puts "Error need to use add_clothing(item) or drop_clothing(item)"
  end

  # method's
  # to_s() - print out a nice representation of the attributes of this person
  def to_s
    puts "Character Name: #{@name}"
    puts "Character Race: #{@race}"
    puts "Character Hit Points: #{@hit_points}"
    print "Character Weapons: "
    for weapon in @weapons
      print weapon
      print " , "
    end
    puts ""
    puts "Character Gold: #{@gold}"
    print "Character Clothing: "
    for cloth in @clothing
      print cloth
      print " , "
    end
    puts ""
  end

  # add_weapon(weapon_name)
  def add_weapon(weapon_name)
    @weapons.push(weapon_name)
  end

  # drop_weapon(weapon_name)
  def drop_weapon(weapon_name)
    @weapons.delete(weapon_name)
  end

  # add_clothing(item)
  def add_clothing(item)
    @clothing.push(item)
  end

  # drop_clothing(item)
  def drop_clothing(item)
    @clothing.delete(item)
  end
end

# testing Person class
puts "########################"
puts "# Testing Person Class #"
puts "########################"
coder = Person.new("Timbre", "Freeman", 20, "bron", "bron")
coder.to_s
puts "chage coder to bob bobivers 12 blue red"
puts "old f.name #{coder.first_name}"
coder.first_name = "bob"
puts "new f.name #{coder.first_name}"
puts "old l.name #{coder.last_name}"
coder.last_name = "bobivers"
puts "new l.name #{coder.last_name}"
puts "old age #{coder.age}"
coder.age = 1000
puts "new age #{coder.age}"
puts "old hair color #{coder.hair_color}"
coder.hair_color = "blue"
puts "new hair color #{coder.hair_color}"
puts "old eye color #{coder.eye_color}"
coder.eye_color = "red"
puts "new eye color #{coder.eye_color}"
coder.to_s
# testing Address class
puts "#########################"
puts "# Testing Address Class #"
puts "#########################"
#coder_address = Address.new("1023 N Van", "", "spokane", "wa", 99206)
coder_address = Address.new("1023 N van", "spokane", "WA", 99206)
coder_address.to_s
puts "old line1 #{coder_address.line1}"
coder_address.line1 = "no line1"
puts "new line1 #{coder_address.line1}"
puts "old line2 #{coder_address.line2}"
coder_address.line2 = "no line2"
puts "new line2 #{coder_address.line2}"
puts "old city #{coder_address.city}"
coder_address.city = "open"
puts "new city #{coder_address.city}"
puts "old state #{coder_address.state}"
coder_address.state = "code"
puts "new state #{coder_address.state}"
puts "old zip #{coder_address.zip}"
coder_address.zip = 99999
puts "new zip #{coder_address.zip}"
coder_address.to_s
# testing Character class
puts "###########################"
puts "# Testing Character Class #"
puts "###########################"
#coder_character = Character.new("tztz8","elf",0,100,["stord","shild"],["sheart","pants"])
coder_character = Character.new("Timbre","human",0,100)
coder_character.to_s
puts "old name #{coder_character.name}"
coder_character.name = "tztz8"
puts "new name #{coder_character.name}"
puts "old race #{coder_character.race}"
coder_character.race = "elf"
puts "new race #{coder_character.race}"
puts "old hit points #{coder_character.hit_points}"
coder_character.hit_points = 100
puts "new hit points #{coder_character.hit_points}"
puts "old gold #{coder_character.gold}"
coder_character.gold = 0
puts "new gold #{coder_character.gold}"
puts "old weapons #{coder_character.weapons}"
coder_character.weapons = ["stord","shild"]
puts "fail new weapons #{coder_character.weapons}"
puts "adding weapon stord and shild"
coder_character.add_weapon("stord")
coder_character.add_weapon("shild")
puts "new weapons #{coder_character.weapons}"
puts "removing shild"
coder_character.drop_weapon("shild")
puts "new weapons #{coder_character.weapons}"
puts "old clothing #{coder_character.clothing}"
coder_character.clothing = ["sheart","pants"]
puts "fail new clothing #{coder_character.clothing}"
puts "adding cloth sheart and pants"
coder_character.add_clothing("sheart")
coder_character.add_clothing("pants")
puts "new clothing #{coder_character.clothing}"
puts "removing sheart"
coder_character.drop_clothing("sheart")
puts "new clothing #{coder_character.clothing}"
coder_character.to_s