class AddPerson < ActiveRecord::Migration
  def up
  	create_table :people do |t|
  		t.integer :year
  		t.string :first_name
  		t.string :last_name
  		t.string :gender
  		t.string :fav_color
  	end
  end

  def down 
  	drop_table :people
  end
end
