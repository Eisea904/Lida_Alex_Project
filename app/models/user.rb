class User < ActiveRecord::Base
  # add associatons!
  has_many :to_do_lists
  has_many :categories, through: :to_do_lists

end
