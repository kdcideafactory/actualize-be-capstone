class Api::ProductsController < ApplicationController

  before_action :authenticate_user

  def create
    @product = Product.new(
      name: params[:name],
      category_id: params[:category_id],
      description: params[:description],
      price: params[:price],
      qoh: params[:qoh],
      user_id: current_user.id
    )

    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @product = Product.find(params["id"])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.description = params[:description] ||
     @product.description
    @product.price = params[:price] || @product.price
    @product.qoh = params[:qoh] || @product.qoh

    @product.save
    render 'show.json.jbuilder'
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "This shit was burned with fire"}
  end


end
