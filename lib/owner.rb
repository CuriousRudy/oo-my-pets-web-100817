class Owner
    @@all = []
    @@count = 0

    attr_accessor :name, :pets
    attr_reader :species

    def initialize(name)
      @pets = {fishes:[], dogs:[], cats:[] }
      @species = "human"
      @name = name
      @@all << self
      @@count += 1
    end

    def self.all
      @@all
    end

    def self.count
      @@count
    end

    def say_species
      "I am a #{@species}."
    end

    def self.reset_all
      self.all.clear
      @@count -= @@count
    end

    def buy_fish(name)
      self.pets[:fishes] << Fish.new(name)
    end

    def buy_cat(name)
      self.pets[:cats] << Cat.new(name)
    end

    def buy_dog(name)
      self.pets[:dogs] << Dog.new(name)
    end

    def walk_dogs
      self.pets[:dogs].each {|dog| dog.mood = "happy" }
    end

    def play_with_cats
      self.pets[:cats].each {|cat| cat.mood = "happy" }
    end

    def feed_fish
      self.pets[:fishes].each {|fish| fish.mood = "happy" }
    end

    def sell_pets
      pets.each do |pet, arr|
        arr.each do |animal|
          animal.mood =  "nervous"
        end
        arr.clear
      end
    end

    def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
    end
end
