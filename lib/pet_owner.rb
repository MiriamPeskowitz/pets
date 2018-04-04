class PetOwner
	# properties
	attr_accessor   :age
	attr_reader :name, :pets

#authomatically called  in >new class method call
#define preset values 
	def initialize(name, age, pets)
		@name = name
		@age = age
		@pets = []
	end 

#actionable 
	def buy_pet(pet)
		self.pets.push(pet)
		pet.owner = self
	end 

	def walk_pets
		self.pets.each {|pet| pet.mood = "happy"}
	end 

	def feed_pets
		self.pets.each {|pet| pet.mood = "full"}
	end 

#self is the instance that calls the instance method 
	def check_for_self
		self
	end 

#self is the class that calls the class method
	def PetOwner.check_for_self
		self
	end 
end 