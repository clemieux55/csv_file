class PeoplesController < ApplicationController

	def index
		@people = Person.all
		@persons = @people.order(:sort_option)
	end

	def show
		@people = Person.order(:sort_option)
	end

end