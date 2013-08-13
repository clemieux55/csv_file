FactoryGirl.define do 
	colors = ["blue", "red", "black", "yellow", "white"]
	gender = ["male", "female"]

	factory :person do 
		sequence(:last_name) {|n| "per#{n}son" }
		sequence(:first_name) {|n| "first#{n}name"}
		gender "#{gender.shuffle.pop}"
		fav_color "#{colors.shuffle.pop}"
		sequence(:year) {|n| "2/10/19#{n}#{n}"} 
	end
end