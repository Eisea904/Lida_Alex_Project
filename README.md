PROJECT
To Do List App - design a basic to do list app that creates lists according to which category is chosen (i.e. Activity, Errand or Event).

GENERAL INFO

The purpose of this app is for individuals and families to use to help them organize and keep track of tasks that an individual would create.  Since the focus behind the project was to understand how to use Active Record in terms of using the data to write code and how it uses APIs and gems to create an interactive interface.  Also to continue to use binding.pry to test and build out code.

SET UP
1. Create Gemfile + run `bundle`
2. Create migrations: run `rake db:create_migration` and add the syntax you need (e.g. `NAME=create_users`)
3. Migrate: run `rake db:migrate`

4. Go to `.bin/run.rb` and change the name of the app on line 3 AND/OR go to `Rakefile` and change the name of the app on line 15
5. Go to `./app/models` and change the names of the files (e.g. `User.rb` <- singular) and the class names inside
6. Set up association macros in classes (`belongs_to` / `has_many` / `has_many, through:`)
7. Create seed file in `db/seed.rb` + then run `rake db:seed`
* remember: seeding does not give you any output so no news on your console == good news
8. Check if you've seeded correctly: run `rake c` and check what's the last instance of any of your class 
9. Go to `./app/yourAppName.rb` and change that file's name and whatever is inside (the class name should correspond to what you wrote in `.bin/run.rb` on line 3) (Input from Instructor Sylwia Vargas)

CODING
1. We started with drawing out the layout
2. then moved on to psuedo coding 
3. and testing with binding.pry and then 
4. We saved to git hub after completing each round of tests using our seeded data
5. Wrote and implemented the code 
6. Ran tested for our code
7. Updated to git after code worked.

ADD FEATURES
None are currently added, however, we had planned to us ACSII and REST API and/or Faker API to populate our data for the app and to make it more attractive.

INSPIRATIONS
Thank you for your help and support of this project

Annie Zheng
Isablel K Lee
Sylwia Vargas
Eric Kim

Articles:
https://medium.com/@sylwiavargas/adding-pictures-to-your-ruby-cli-4252b89823a
https://dev.to/aidiri/using-tty-prompt-for-your-cli-app-1l5a
https://github.com/ritaly/README-cheatsheet/blob/master/README.md#screenshots



# Lida_Alex_Project
# Lida_and_Alex_Project_-
