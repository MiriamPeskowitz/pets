require_relative "../spec_helper"

RSpec.describe PetOwner do 
	before(:each) do
		@pet_owner = PetOwner.new("Bob", 31, "Garfield")
		@pet = Pet.new("Garfield", "orange", "Tabby", "Cat")

	end 

	describe "#name" do 
		it "has a name" do
			expect(@pet_owner.name).to eq("Bob")
		end

		it "should be a reader" do
			expect(@pet_owner.methods).to include(:name)
		end

		it "should not be a writer" do
			expect(@pet_owner.methods).to_not include(:name=)
		end

	end 

	describe "#pets" do
		it "should be an array" do
			expect(@pet_owner.pets).to eq([])	#an empty array 
		end 

		it "should be a reader" do
		 	expect(@pet_owner.methods).to include(:pets)
		end 

		it "should not be a writer" do 
			expect(@pet_owner.methods).to_not include(:pets=)
		end
	end	
				

	describe "#age" do 

		it "has an age" do
			expect(@pet_owner.age). to eq(31)
		end

		it "should have a reader" do
			expect(@pet_owner.methods).to include(:age)

		end

		it "should havea writer" do
			expect(@pet_owner.methods).to include(:age=)
		end 
	end

	describe "#pets" do
		it "should be an array " do
			expect(@pet_owner.pets).to eq([])
		end 

		it "should be a reader" do
			expect(@pet_owner.methods).to include (:pets)
		end 

		it "should not be a writer" do
			expect(@pet_owner.methods).to_not include(:pets=)
		end 
	end 


	describe "#check_for_self" do
		#self refers to what's calling themethod 
		it "should return the instance" do
			expect(@pet_owner.check_for_self).to eq(@pet_owner)
		end
	end 

	describe ".check_for_self" do
		it "should return the class" do 
			expect(PetOwner.check_for_self).to eq(PetOwner)

		end 
	end 



	describe "#buy_pet(pet)" do
		it "should add pet to the pets array" do
			@pet_owner.buy_pet(@pet)
			expect(@pet_owner.pets).to include(@pet)
		end

		it "should add the owner to the pet.owner" do
		 	@pet_owner.buy_pet(@pet)
		 	expect(@pet.owner).to eq(@pet_owner)
		end 
	end 

	describe "#walk_pets" do
		it "makes all the pets happy" do
			@pet_owner.walk_pets
			expect(@pet_owner.pets.all?{|pet| pet.mood = "happy"}).to eq(true)
		end 
	end 

	describe "#feed_pets" do
		it "makes the pets full" do
			@pet_owner.feed_pets
			expect(@pet_owner.pets.all?{|pet| pet.mood = "full"}).to eq(true)
		end 
	end 	

end 
