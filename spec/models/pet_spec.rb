require_relative "../spec_helper"

RSpec.describe Pet do 
	
	before(:each) do
		@pet_owner = PetOwner.new("Bob", 31, "Garfield")
		@pet = Pet.new("Garfield", "orange", "Tabby", "cat")
	end 

	describe "#name" do 
		it "has a name" do
			expect(@pet.name).to eq("Garfield")
		end

		it "should be a reader" do
			expect(@pet.methods).to include(:name)
		end

		it "should be a writer" do
			expect(@pet.methods).to include(:name=)
		end

	end 

	describe "#color" do 
		it "has a color" do
			expect(@pet.color).to eq("orange")
		end

		it "should be a reader" do
			expect(@pet.methods).to include(:color)
		end

		it "should be a writer" do
			expect(@pet.methods).to_not include(:color=)
		end

	end 

	describe "#breed" do 
		it "has a breed" do
			expect(@pet.breed).to eq("Tabby")
		end

		it "should be a reader" do
			expect(@pet.methods).to include(:breed)
		end

		it "should be a writer" do
			expect(@pet.methods).to_not include(:breed=)
		end

	end 


	describe "#species" do 
		it "has a species" do
			expect(@pet.species).to eq("cat")
		end

		it "should be a reader" do
			expect(@pet.methods).to include(:species)
		end

		it "should be a writer" do
			expect(@pet.methods).to_not include(:species=)
		end

	end 
end
