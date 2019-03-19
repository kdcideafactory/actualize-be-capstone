class Api::ConversationsController < ApplicationController

  before_action :authenticate_user

  def index
    @conversation = Conversation.all
    render 'index.json.jbuilder'
  end

  def show
    @conversation = Conversation.find(params[:id])
    @conversation.messages.sort
    render 'show.json.jbuilder'
  end

end