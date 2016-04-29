class RecipesController < ApplicationController
  def list
  	@search_term = params[:looking_for] || 'chicken'
  	@courses = Recipe.for(@search_term)
  end
end
