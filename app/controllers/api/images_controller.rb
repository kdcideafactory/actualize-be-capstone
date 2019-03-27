class Api::ImagesController < ApplicationController
  before_action :authenticate_user  


  def create
    @image = Image.new(
      url: params[:url],
      product_id: params[:product_id]
    )

    if @image.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @image.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    render json: {message: "This shit was burned with fire"}
  end

end
