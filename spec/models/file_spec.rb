require 'spec_helper'

describe Person do 
	let(:person) { Person.read_csv_to_database("public/test.csv") }

	it 'returns an array' do 
		expect(person).to be_kind_of Array
	end

	it "returns a multidimentional array" do 
		expect(person.length).to eql 2
	end

	it "adds the csv data to the database" do 
		prev_count = Person.count
		Person.create(first_name: "Chris",
									last_name: "Lemieux",
									gender: "male",
									fav_color: "Blue",
									year: "2/2/1967"
									 )
		expect(Person.count).to eql(prev_count + 1)

	end
end

