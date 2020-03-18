class DirectorsController < ApplicationController

    def index
        @directors = Director.all
    end 

    def show
        @director = Director.find(params[:id])
    end 

    def new
        @director = Director.new
    end 

    def create
        @director = Director.new(director_params)

        @director.save
        redirect_to director_path(@director)
    end 

    def edit
        @director = Director.find(params[:id])
    end 

    def update
        @director 
    end 

    def delete
        @director = Director.find(params[:id])
        @director.destroy
        redirect_to director_path
    end 

    private

        def director_params
            parms.require(:director).permit(:name, :age)
        end 
end 