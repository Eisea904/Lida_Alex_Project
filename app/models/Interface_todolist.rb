require "tty-prompt"
prompt = TTY::Prompt.new 

class Interface
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
          menu.choice "Choose Sign In" , -> {puts "you chose to sign in"}
          menu.choice "Choose category", -> {puts "You chose to view categories"}
        end
    end

                        # Check sintax for user_registration_method
                        
    def user_registration_helper        
      userInputValue = user.registration()
      until userInputValue
        userInputValue == user.registration()
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

      prompt.select("Do you want to...", %w(Choose to login, Choose Category)) do |menu|
        menu.choice "Choose to login", -> {user_login_helper}
        menu.choice "Choose Category", -> {display_category_names}
      end
    end


    

    def display_category_names
      
      Category.all
      
    end




    #def 
        # login_or_signup
        # wanna_see_favs?
        # get_joke(what_subject)
    #end

    private

  
end