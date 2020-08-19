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
      #choice = prompt.select("Welcome to your To-Do-List, how can I help?" ["create user", "choose category", "choose user"])
      prompt.select("How can I help you?") do |menu| 
        menu.choice "create user" , -> {user_registration_helper} 
        menu.choice "choose category" , -> {puts "you chose to see categories"}

        menu.choice "choose user" , -> {puts "you chose to see users"}
      end
    end

    def user_registration_helper        # Check sintax for user_registration_method
      userReturnValue = user.registration()
      until userReturnValue
        userReturnValue == user.registration()
      end
      self.user = userReturnValue
      self.main_menu 
    end 

    def main_menu
      user.reload
      system "clear"
      puts "Hello, you..."
      prompt.select("Choose something to do") do |menu|
        menu.choice "Choose User", -> {display_user_names}
        menu.category "Choose Category" , -> {display_category_names}
      end
    end

     def display_everyones_name
      User.all
     end 



    #def 
        # login_or_signup
        # wanna_see_favs?
        # get_joke(what_subject)
    #end

    private

  
end