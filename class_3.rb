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

  def initialize(name, age, village_name)
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
    someone_had_been_killed? ? 'sharingan' : 'nothing happened'
  end

  def someone_had_been_killed?
    someone_had_been_killed.is_a?(String)
  end
end

module Sharinganable
  class Foo
    def test
      'test'
    end
  end
  def sharingan
    " Hi My name is #{name}"
  end
end

class Hatake
  attr_reader :name
  include Sharinganable
  def initialize(name = 'kakashi')
    @name = name
  end
end

K = Hatake.new
puts K.name
puts K.sharingan