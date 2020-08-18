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
tdl_one = To_Do_List.create(user_id: , category_id: 1, note: , completed?: true, location: school)
tdl_two = To_Do_List.create(user_id: , category_id: 2, note: , completed?: false, location: home)
tdl_ three = To_Do_List.create(user_id: , category_id: 3, note: , completed?: true, location: concert hall)
tdl_four = To_Do_List.create(user_id: , category_id: 1, note: , completed?: true, location: grocery store)
tdl_five = To_Do_List.create(user_id: , category_id: 2, note: , completed?: false, location: cleaners)
tdl_six = To_Do_List.create(user_id: , category_id: 3, note: , completed?: true, location: pharmacy)
tdl_seven = To_Do_List.create(user_id: , category_id: 1, note: , completed?: false, location: home)
tdl_eight = To_Do_List.create(user_id: , category_id: 2, note: , completed?: true, location: dinner party)
tdl_nine = To_Do_List.create(user_id: , category_id: 3, note: , completed?: false, location: school)


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
