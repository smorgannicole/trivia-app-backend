class TriviaCategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    categories = TriviaCategory.all
    render json: categories
  end

  def show
    category = TriviaCategory.find(params[:id])
    render json: category
  end
end
