class Api::ConversationsController < ApplicationController

  def index
    @conversations = current_user_id.conversations
  end

  def show
    @conversation = Conversation.find(params[:id])
    @conversation.messages.sort
  end

  def create
    if Conversation.between(params[:sender_id],params[:recipient_id])
     .present?
      @conversation = Conversation.between(params[:sender_id],
       params[:recipient_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end
    render 'show.json.jbuilder'
  end

  private
    def conversation_params
      params.permit(:sender_id, :recipient_id, :product_id)
    end
end


Change the sender_id product_id recipient_id - when t