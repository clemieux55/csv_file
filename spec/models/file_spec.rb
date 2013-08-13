require 'spec_helper'

describe Person do 
	let(:person) { Person.read_csv_to_database("public/test.csv") }

	it 'returns an array' do 
		expect(person).to be_kind_of Array
	end

	it "returns a multidimentional array" do 
		expect(person.length).to eql 2
	end

end

