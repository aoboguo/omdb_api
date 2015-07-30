class MoviesController < ApplicationController
  def index
  	@query = params[:query]

  	response = RestClient.get "http://www.omdbapi.com/?s=#{@query}"
  	@movies = JSON.parse(response.body)["Search"]

  end
end
