class Message < ApplicationRecord

  validates_presence_of :body, :conversation_id, :user_id

  belongs_to :conversation
  belongs_to :user

  
end