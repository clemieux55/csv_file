require 'spec_helper'

describe Person do 

	it 'returns an array' do 
		expect(Person.read_csv_to_database("public/test.csv")).to be_kind_of Array
	end

end

