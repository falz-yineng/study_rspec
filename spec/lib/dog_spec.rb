require "spec_helper"
require "dog"

describe "Dog" do
	it "is named 'Pochi'" do
		dog = Dog.new
		expect(dog.name).to eq 'Pochi'
	end

	it "has fangs" do
		dog = Dog.new
		expect(dog.fangs).to eq 2
	end

	it 'is alived' do
		dog = Dog.new
		expect(dog).to be_alived
	end

end

describe '四則演算' do
	describe '足し算' do
		it '1+1 が 2 になること' do
			expect(1 + 1).to eq 2
		end
	end
	describe '掛け算' do
		it '1 * 3 が 3 になること' do
			expect(1 * 3).to eq 3
		end
	end
end