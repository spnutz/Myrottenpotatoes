class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end
    
    def show
        id = params[:id]
        @movie = Movie.find(id)
    end
    
    def new
        @movie = Movie.new
    end
    
    def create
        @movie = Movie.create!(allowparams)
        flash[:notice] = "#{@movie.title} was successfully created."
        redirect_to movie_path (@movie)
    end
    
    def allowparams
        params[:movie].permit(:title,:rating,:release_date)
    end
    
    def edit
        @movie = Movie.find params[:id]
    end
    
    def update
        @movie = Movie.find params[:id]
        @movie.update_attributes!(allowparams)
        flash[:notice] = "#{@movie.title} was successfully update"
        redirect_to movie_path(@movie)
    end
    
    def destroy
        @movie = Movie.find params[:id]
        @movie.destroy
        flash[:notice] = "Movie '#{@movie.title}' delete"
        redirect_to movies_path 
    end
end