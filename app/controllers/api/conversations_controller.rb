class Api::ConversationsController < ApplicationController

  def index
    @conversations = current_user.conversations
  end

  def show
    @conversation = Conversation.find(params[:id])
    @conversation.messages.sort
  end

  def create
    @conversation = Conversation.new(
      product_id: params[:product_id],
      recipient_id: params[:recipient_id],
      sender_id: current_user.id
      )
    if @conversation.save
      @message = Message.new(
        body: params[:body],
        conversation_id: @conversation.id,
        user_id: current_user.id
      )
      @message.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @conversation.errors.full_messages}, status: :bad_request
    end

  end

  # def create
  #   if Conversation.between(params[:sender_id],params[:recipient_id])
  #    .present?
  #     @conversation = Conversation.between(params[:sender_id],
  #      params[:recipient_id]).first
  #   else
  #     @conversation = Conversation.create!(conversation_params)
  #   end
  #   render 'show.json.jbuilder'
  # end

  private
    def conversation_params
      params.permit(:sender_id, :recipient_id, :product_id)
    end
end
