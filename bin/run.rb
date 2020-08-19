require_relative '../config/environment'

app = nameOfYourApp.new
app.run

# Test for reading of table => "R"

User.first
User.second
User.third
User.last
User.find()

Category.first
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

new_location = To_Do_List.find_by(location: "school")
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
