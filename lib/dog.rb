class Dog

  attr_accessor :mood, :species, :count
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end


end
