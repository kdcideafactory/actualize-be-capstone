json.array! @conversation.each do |conversation|
  json.partial! "conversation.json.jbuilder", conversation: conversation
end
