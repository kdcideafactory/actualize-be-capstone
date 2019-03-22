class Api::ConversationsController < ApplicationController

  before_action :authenticate_user

  def index
    @conversations = current_user.conversations
    render 'index.json.jbuilder'
  end


  def create
    if Conversation.between(params[:sender_id],params[:recipient_id])
      .present?
       @conversation = Conversation.between(params[:sender_id],
        params[:recipient_id]).first
    else
     @conversation = Conversation.create(
      sender_id: current_user.id,
      recipient_id: params[:recipient_id],
      product_id: params[:product_id]
      )
    end
    render 'show.json.jbuilder'
  end

  def show
    @conversation = Conversation.find(params[:id])
    render 'show.json.jbuilder'
  end

end