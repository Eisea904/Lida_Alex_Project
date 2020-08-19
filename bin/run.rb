require_relative '../config/environment'

app = nameOfYourApp.new
app.run

# Test for user.rb .create => "C"
barbara = User.create(name: "Barbara")
frank = User.create(name: "Frank")
jimmy = User.create(name: "Jimmy")
lisa = User.create(name: "Lisa")
josephine = User.create(name: "Josephine")
stephanie = User.create(name: "Stephanie")
craig = User.create(name: "Craig")
mark = User.create(name: "Mark")
mercedes = User.create(name: "Mercedes")
jamar = User.create(name: "Jamar")

# Test for category.rb

category = Category.create(name: "Activity")
category_one = Category.create(name: "Errand")
category_two = Category.create(name: "Event")

# Test for to_do_list.rb

#tdl = To_Do_List.create(user_id: , category_id: , note: , completed?: location: )
tdl_one = To_Do_List.create(user_id: 1, category_id: 1, note: nil, completed?: true, location: nil)
tdl_two = To_Do_List.create(user_id: 2, category_id: 2, note: nil, completed?: false, location: nil)
tdl_ three = To_Do_List.create(user_id: 3, category_id: 3, note: nil, completed?: true, location: nil)
tdl_four = To_Do_List.create(user_id: 4, category_id: 1, note: nil, completed?: true, location: nil)
tdl_five = To_Do_List.create(user_id: 5, category_id: 2, note: nil, completed?: false, location: nil)
tdl_six = To_Do_List.create(user_id: 6, category_id: 3, note: nil, completed?: true, location: nil)
tdl_seven = To_Do_List.create(user_id: 7, category_id: 1, note: nil, completed?: false, location: nil)
tdl_eight = To_Do_List.create(user_id: 8, category_id: 2, note: nil, completed?: true, location: nil)
tdl_nine = To_Do_List.create(user_id: 9, category_id: 3, note: nil, completed?: true, location: nil)
tdi_ten = To_Do_List.create(user_id: 10, category_id: 1, note: nil, completed?: false, location: nil)

# Test for reading of table => "R"

User.fisrt
User.second
User.third
User.last
User.find()

Category.fisrt
Category.second
Category.third
Category.last
Category.find()

To_Do_List.fisrt
To_Do_List.second
To_Do_List.third
To_Do_List.last
To_Do_List.find()

# Test for updating => "U"

# *********************UPDATING AN INSTANCE**************************
#var = Noun.find_by(attr: value) => var.update(attr1: value, attr2: value)
#Then call var in console to confirm it can be read

new_location = To_Do_List.find_by(location: school)
new_location.update(location: school, location: tennis court)

#**********************UPDATING ALL INSTANCES**************************

# Noun.update(attribute: value, another_attribute: value)

To_Do_List.update(note: nil, note: Emergency notice)

#Test for deleting => "D"

#***********************DELETING ALL INSTANCES*************************

# Noun.destroy_all => Noun.all

Category.destroy_all

# var = Noun.find_by(attr: value) => var.destroy

task_completed = To_Do_List.find_by(completed?: true)
task_completed.destroy