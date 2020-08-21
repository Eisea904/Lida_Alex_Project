require "tty-prompt"
prompt = TTY::Prompt.new 

class TodolistApp
    # here will be your CLI!
    # it is not an AR class so you need to add attr
    attr_accessor :user
    attr_reader   :prompt 
    def initialize
        @prompt = TTY::Prompt.new
    end 

    def welcome
    #choice = prompt.select("Welcome to your To-Do-List, how can I help?" ["create user", "log in", "choose category"])

        prompt.select("Welcome, How can I help you?") do |menu| 
            menu.choice "Create user", -> {user_registration_helper} 
            menu.choice "Choose List" , -> {puts "Do you have a list?"}
            menu.choice "Choose category", -> {create_a_todolist}
        end
    end
           
    def user_registration_helper        
        userInputValue = User.registration()
        until userInputValue
            userInputValue == User.registration()
        end
        self.user = userInputValue
        self.main_menu 
    end 

    # def user_login_helper
    #   user_login_name = User.login()
    #   until user_login_name
    #       user_login_name == User.login()
    #   end
    #   self.user = user_login_name
    #   self.main_menu 
    # end

    def main_menu
        user.reload        # we reload to get most recent data
        system "clear"     # clears the terminal and pushes this to the top
        puts "Hello there #{self.user.name}!"

        prompt.select("Do you want to..." ) do |menu|
            menu.choice "Create a To Do List", -> {create_a_todolist}
            menu.choice "Choose Category", -> {create_a_todolist}
        end
    end

    def create_a_todolist
        selected_category = prompt.select("Select a category") do |menu|
            Category.all.each do |category|
                menu.choice "#{category.name}"
            end
        end
        category_id = Category.find_by(name: selected_category).id
        print category_id

        #enter variables to make Todolist.new
        @entered_loc = prompt.ask("Enter location")
        @entered_note = prompt.ask("Enter note")
        @entered_completed = prompt.ask("completed? Enter(true/false)")
        @entered_title = prompt.ask("Enter title")
        @entered_title = Todolist.create(user_id: user.id, category_id: category_id, location: @entered_loc, note: @entered_note, completed?: @entered_completed) 
        update_list #--> will send user to update_list method and prompts
        # sleep 5
        #     self.main_menu
        #     # self.main_menu <- To take me back to the main_menu
    end

    # def display_and_update_list
    #     # Todolist.all_names => [{name => id}, {name => id}]
    #     Todolist.all.each do |todolists|
    #         todolists.name
    #         main_menu
    #     end
    # end

    def update_to_completed
        #binding.pry 
        entered_completed = true
        destroy_single_item
    end

    def update_list
        prompt.select("Update item to 'completed'?") do |menu|
            menu.choice "True", -> {update_to_completed}
            menu.choice "False", -> {puts "See you later!"}
        end
    end
          # choices = {"Barbara" => 1, "Frank" => 2, "Jimmy" => 3, ""}
          # prompt.select("Choose your destiny?", choices)
          #print selected_category.all

    def destroy_single_item
        prompt.select("Erase completed item?") do |menu|
            #binding.pry 
            menu.choice "Yes", ->{@entered_title.destroy puts "deleted completed item, thank you Cha-ching!"}
            menu.choice "No", -> {"Thank you, this session was saved, Cha-ching!"}
        end
    end
private
end