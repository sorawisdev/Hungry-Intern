class RecipesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index; end
  
  def new; end

  def edit; end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipes_path
      else
        render :edit
    end
  end

  def create 
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else 
      render :new
    end
  end

  def show; end
  
  def destroy
    if @recipe.destroy
      redirect_to recipes_path
    end
  end

  def recipe_params
    params.require(:recipe).permit(:name, :description, :category_id, :recipe_image, :instruction, ingredient_ids: [])
  end
end
