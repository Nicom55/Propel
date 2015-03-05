class Goal < ActiveRecord::Base
  
  #validations
  validates :title, presence: true
  
  #linking goals to users
  belongs_to :user
  
  #making goals likeable
  has_many :likes, as: :likeable
  
  # goals have comments!
  has_many :comments
  
end
