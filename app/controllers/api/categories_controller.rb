class Api::CategoriesController < ApplicationController

  def index
    @category = Category.all
    render 'index.json.jbuilder'
  end

  def show
    @category = Category.find(params[:id])
    render 'show.json.jbuilder'
  end

end

