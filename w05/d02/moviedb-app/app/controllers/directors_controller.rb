class DirectorsController < ApplicationController
	before_action :set_director, only: [:show, :edit, :update, :destroy]

	def index
		@directors = Director.all
	end

	def show
	end

	def new
		@director = Director.new
	end

	def create
		@director = Director.new(director_params)
		@director.save
		redirect_to directors_url
	end

	def edit
	end

	def update
		@director.update(director_params)
		redirect_to directors_url
	end

	def destroy
		@director.destroy
    redirect_to directors_url
	end

	private
    def set_director
      @director = Director.find(params[:id])
    end

    def director_params
      params.require(:director).permit(:name, :dob, :rating)
    end

end