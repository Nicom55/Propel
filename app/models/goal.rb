class Goal < ActiveRecord::Base
  
  validates :title, presence :true

end
