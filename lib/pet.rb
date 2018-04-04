class Pet 
	attr_accessor :name, :owner, :mood
	attr_reader :color, :breed, :species

	def initialize(name, color, breed, species)
		@name = name
		@color = color
		@breed = breed
		@species = species
		@mood = "nervous"
	end 
end