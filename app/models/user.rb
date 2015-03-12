class User < ActiveRecord::Base
  attr_accessor :password
  
  # linking users to goals
  has_many :goals
  has_many :likes
  has_many :comments
  
  #validations for user signup
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
  
  #other validations
  validates :first, presence: true
  validates :last, presence: true
  validates :email, presence: true
  
end
