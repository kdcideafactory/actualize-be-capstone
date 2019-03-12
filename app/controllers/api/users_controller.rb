class Api::UsersController < ApplicationController
# 
  before_action :authenticate_user, only: [:update, :destroy]

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      address: params[:address],
      bio: params[:bio],
      avatar: params[:avatar],
      # id: current_user.id
     )

    if @user.save
      render 'show.json.jbuilder'

    else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params["id"])
    render 'show.json.jbuilder'
  end

  def update
    @user = current_user

    @user.name = params[:name] || @user.name
    @user.email = params[:email] || @user.email
    @user.address = params[:address] || @user.address
    @user.bio = params[:bio] || @user.bio
    @user.avatar = params[:avatar] || @user.avatar
    @user.password = params[:password] || @user.password_digest

    if @user.save
      render 'show.json.jbuilder'

    else
      render json: {errors: @user.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    @user = current_user #User.find_by(id: params[:id])
    @user.destroy
    render json: {message: "This shit was burned with fire"}
  end
end