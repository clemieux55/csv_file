require 'spec_helper'

describe "Sorting" do 
	let(:people) { Person.last(3) }

	it "sorts by desired attribute" do 
		visit root_path
		select "Gender", from: "sort_box"
		people.each do |person|
			expect(page).to have_content person.first_name
			expect(page).to have_content person.last_name
			expect(people.first.gender).to eql("Female")
		end
	end


end	