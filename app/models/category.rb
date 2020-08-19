class Category < ActiveRecord::Base
# add associatons!
    has_many :todolists
    has_many :users, through: :todolists


    # def self.all_names
    #     Category.all.map do |category|
    #         category.name => category.id
    #     end
    # end
end 
