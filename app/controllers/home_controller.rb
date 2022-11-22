class HomeController < ApplicationController
  
  before_action :get_categs, only: [:index, :show, :list, :category]

  def get_categs
    @categs = Category.all
  end

  def index
    @recipes = Recipe.all
    @recipes_reverse = Recipe.all.reverse
  end

  def show 
    @recipe = Recipe.find_by(id: params[:id])
  end

  def list
    @lists = Recipe.all

  end

  def category
    @categ = Category.find_by(id: params[:id])
  end

  def show
  
  end

  def list

  end
end
