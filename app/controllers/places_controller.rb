class PlacesController < ApplicationController
	def index
		@place = Place.last
	end

	def new
		@place = Place.new
	end

	def create
		# does the equivalent of [Place.create(:title => 'omg', ...)] in the terminal
		# create method needs to define place_params below
		# create a new line in the Place db with the place_params, store it in @place_params
		@place = Place.create( place_params )
		redirect_to root_path
	end

	# anything under private is internal to site not accessible by public via url
	private

	def place_params
		params.require(:place).permit(:title, :address)
	end
end
