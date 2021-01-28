class MoviesController < ApplicationController
    def new
        @movie = Movie.new
    end

    def create
        @movie = Movie.new(movie_params)
        @movie.save
        redirect_to movie_path(@movie)
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def edit
        
    end

    def update
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            redirect_to movie_path(@movie)
        else
            render 'edit'
        end
    end

    def index
        @movies = Movie.all
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movie_path
    end

    private
        def movie_params
            params.require(:movie).permit(:title, :desc, :genres, :original_language)
        end

        
end