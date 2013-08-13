class PeoplesController < ApplicationController

	def index
		@people = Person.all

	end

end