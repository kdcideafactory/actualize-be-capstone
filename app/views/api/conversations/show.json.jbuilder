json.id @conversation.id
json.created_at @conversation.created_at
json.product_name @conversation.product.name
json.sender do
  json.partial! @conversation.sender, partial: "api/users/user", as: :user
end
json.recipient do
  json.partial! @conversation.recipient, partial: "api/users/user", as: :user
end
json.messages do
 json.array! @conversation.messages, partial: "api/messages/message", as: :message
end