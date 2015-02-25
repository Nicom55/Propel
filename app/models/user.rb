class User < ActiveRecord::Base
  
  # linking users to goals
  has_many :goals
  
  #validations
  validates :first, presence: true
  validates :last, presence: true
  validates :email, presence: true
  
end
