class Ninja
  attr_accessor :village_name
  def initialize(village_name = 'konoha')
    @village_name = village_name
  end
end

a = Ninja.new
puts a.village_name
a.village_name = 'test'
puts a.village_name