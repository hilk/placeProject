class PlacesController < ApplicationController
	before_action :set_places, only: [:show, :edit, :update, :destroy]
	def new
		@places = Place.new
	end
	def index
		@places = Place.all
	end	

	def show

	end

	def create
		@places = Place.create(strong_params)
		if @places.save
			redirect_to place_path(@places)
			
		else
			render :new 
		end
	end


	def edit
		
	end

	def update
		if @places.update(strong_params)
			redirect_to place_path(@places)
		else
			render :edit
		end
	end

	def destroy
		if @places.destroy
			redirect_to places_path
		else
			render :show
		end
	end


	private

	def strong_params
		params.require(:place).permit(:name, :addres, :estabished_at, :number, :mail, :description)
	end

	def set_places
		@places=Place.find(params[:id])
	end
end
