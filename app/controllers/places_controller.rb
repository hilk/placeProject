class PlacesController < ApplicationController
	attr_accessor :category_id
	before_action :set_places, only: [:show, :edit, :update, :destroy]
	def new
		@places = Place.new
		load_categories
	end

	def index
		@places = Place.all
	end	

	def show
		load_categories
	end

	def create
		@places = Place.create(strong_params)

		if @places.save
			redirect_to place_path(@places)
			
		else
			load_categories
			render :new 

		end
	end


	def edit
		load_categories	
	end

	def update
		if @places.update(strong_params)
			redirect_to place_path(@places)
		else
			load_categories
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
		params.require(:place).permit(:name, :addres, :estabished_at, :number, :mail, :description, :category_id)
	end

	def set_places
		@places=Place.find(params[:id])
	end

	def load_categories
		@categories = Category.all.map { |e| [e.name, e.id] }
	end

end
