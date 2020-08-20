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
          menu.choice "Choose Sign In" , -> {puts "You chose to sign in"}
          menu.choice "Choose category", -> {puts "You chose to view categories"}
        end
    end

                        # Check sintax for user_registration_method
                        
    def user_registration_helper        
      userInputValue = User.registration()
      until userInputValue
        userInputValue == User.registration()
      end
      self.user = userInputValue
      self.main_menu 
    end 

    def user_login_helper
      user_login_name = user.login()
      until user_login_name
        user_login_name == user.login()
      end
      self.user = userReturnValue
      self.main_menu 
      

    end

    def main_menu

      user.reload        # we reload to get most recent data
      system "clear"     # clears the terminal and pushes this to the top
      puts "Hello there #{self.user.name}!"

      prompt.select("Do you want to..." ) do |menu|
        menu.choice "Create a To Do List", -> {create_a_todolist}
        menu.choice "Choose Category", -> {display_category_names}
      end
    end

    def create_a_todolist
      selected_category = prompt.select("Select a category") do |menu|
        Category.all.each do |category|
          menu.choice "#{category.name}"
      end
    end
      selected_category_id = Category.find_by(name: selected_category).id
        print selected_category_id

        entered_loc = prompt.ask("Enter location")
        enter_note = prompt.ask("Enter note")
        enter_completed? = prompt.ask("completed? Enter(True/False)")
        end 


    

    # # def display_category_names
    #     User.all
    #     puts 
    #  end 



    #def 
        # login_or_signup
        # wanna_see_favs?
        # get_joke(what_subject)
    #end

    private

  
end