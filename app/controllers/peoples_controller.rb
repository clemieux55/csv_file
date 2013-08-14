class PeoplesController < ApplicationController

	def index
		@people = Person.all
		@persons = @people.order(:sort_option)
	end

	def gender
		@gender = Person.order("gender")
	end

	def last_name
		@last_name = Person.order("last_name")
	end

end