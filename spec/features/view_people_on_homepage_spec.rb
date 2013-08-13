require 'spec_helper'


describe "Peoples index page" do 
before :each do 
	3.times do 
		FactoryGirl.create(:person)	
		end
	end

	it "shows the attributes for person" do
		visit root_path
		people = Person.first(3)
		people.each do |person|
			expect(page).to have_content person.first_name
		end
	end
end