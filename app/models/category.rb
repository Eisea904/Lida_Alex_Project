class Category < ActiveRecord::Base
# add associatons!
    has_many :to_do_lists
    has_many :users, through: :to_do_lists

end
