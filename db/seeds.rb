User.destroy_all
Category.destroy_all
ToDoList.destroy_all


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
tdl_one = Todolist.create(user_id: 1, category_id: 1, note: "abc", completed?: true, location: "ghi")
tdl_two = Todolist.create(user_id: 2, category_id: 2, note: "def", completed?: false, location: "jkl")
tdl_three = Todolist.create(user_id: 3, category_id: 3, note: "mno", completed?: true, location: "pqr")
tdl_four = Todolist.create(user_id: 4, category_id: 1, note: "stu", completed?: true, location: "vwx")
tdl_five = Todolist.create(user_id: 5, category_id: 2, note: "yz", completed?: false, location: "ab")
tdl_six = Todolist.create(user_id: 6, category_id: 3, note: "cd", completed?: true, location: "ef")
tdl_seven = Todolist.create(user_id: 7, category_id: 1, note: "gh", completed?: false, location: "ij")
tdl_eight = Todolist.create(user_id: 8, category_id: 2, note: "kl", completed?: true, location: "mn")
tdl_nine = Todolist.create(user_id: 9, category_id: 3, note: "op", completed?: true, location: "qr")
tdl_ten = Todolist.create(user_id: 10, category_id: 1, note: "st", completed?: false, location: "uv")

