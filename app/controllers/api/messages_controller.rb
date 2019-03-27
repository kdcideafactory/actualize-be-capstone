class Api::MessagesController < ApplicationController


  def index
    @messages = Message.where(:id)
    render 'index.json.jbuilder'
  end


  def show
    @message = Message.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create

     @message = Message.new(
    user_id:, current_user.id,
    subject: params["subject"], ###THIS SHOULD BE THE PRODUCT - NEED TO TIE THIS TO THE PRODUCT

    )
   if @message.save
    render 'show.json.jbuilder'
    else 
      render json:{errors: @message.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def update
   @message = message.find(params[:id])

    @message.subject = params["subject"] || @message.subject  ###THIS SHOULD BE THE PRODUCT - NEED TO TIE THIS TO THE PRODUCT
    @message.message = params["message"] || @message.message
    @message.active = params["active"] || @message.active


    if @message.save
      render 'show.json.jbuilder'
    else
      render json:{errors: @message.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
  end
end