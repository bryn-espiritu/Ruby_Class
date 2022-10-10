class Ninja
  attr_accessor :village_name
  def initialize(village_name = 'konoha')
    @village_name = village_name
  end

  def greeting
    "here is #{village_name}"
  end
end

class Uchiha < Ninja
  attr_accessor :age
  attr_reader :name
  attr_accessor :someone_had_been_killed
  def initialize(name , age, village_name)
    @name = name
    @age = age
    @village_name = village_name
  end

  def greeting
    "my name is #{name}, and I live in #{village_name}"
  end

  def adult?
    age >= 18
  end
  def sharingan
    if !someone_had_been_killed?
      'sharingan'
    else
      'nothing happened'
    end
  end

  def someone_had_been_killed?
    someone_had_been_killed.is_a?(String)
  end
end

a = Ninja.new
puts a.village_name
a.village_name = 'KONOHA'
puts a.village_name
puts a.greeting
#========================================================================
naruto = Uchiha.new('sasuke', 22, 'Konoha')
naruto.name
naruto.age
naruto.village_name
puts naruto.greeting
#==========================================================================
puts naruto.adult?
puts naruto.someone_had_been_killed?
puts naruto.sharingan




