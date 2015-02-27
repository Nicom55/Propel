class User < ActiveRecord::Base
  
  # linking users to goals
  has_many :goals
  has_many :likes
  
  #validations
  validates :first, presence: true
  validates :last, presence: true
  validates :email, presence: true
  
end
