class Comment < ActiveRecord::Base
  
  #comments belong to users
  belongs_to :user
  
  # comments belog to goals
  belongs_to :goal
  
  #comments should be likeable
  has_many :likes, as: :likeable
  
end
