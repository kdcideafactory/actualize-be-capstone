json.array! @users.each do |user|
  json.partial! "user.json.jbuilder", user: user

  # json.user do
  #   json.partial! conversation.user, partial: "api/conversations/conversation", as: :users
  # end
end