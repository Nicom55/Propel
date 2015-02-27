class User < ActiveRecord::Base
  
  # linking users to goals
  has_many :goals
  has_many :likes
  has_many :comments
  
  #validations
  validates :first, presence: true
  validates :last, presence: true
  validates :email, presence: true
  
end
