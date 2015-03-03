class Like < ActiveRecord::Base
  
  belongs_to :user
  
  belongs_to :likeable, polymorphic: true
  
  #associating likes with comments
  belongs_to :comment
  
end
