require 'csv'

class Person < ActiveRecord::Base



	def self.read_csv_to_database(file)
		read_file = []
		CSV.foreach(file, "r") do |row|
			read_file << row
		end

		read_file
	end

end