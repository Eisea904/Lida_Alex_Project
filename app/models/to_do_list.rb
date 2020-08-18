class To_Do_List < ActiveRecord::Base
    belongs_to :category
    belongs_to :user
  
end