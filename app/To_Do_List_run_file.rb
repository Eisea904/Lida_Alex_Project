require "tty-prompt"
prompt = TTY::Prompt.new 

class To_Do_App
    # here will be your CLI!
    # it is not an AR class so you need to add attr
    attr_accessor :prompt
    def initialize
        @prompt = TTY::Prompt.new
    end 

    def welcome
      choice = prompt.select("Welcome to your To-Do-List, which to_do_item 
        would you like to see?", ["To_Do_List_one", "To_Do_List_two" "etc."])
      
      if choice == "To_Do_List_one"
        return "To_Do_List_one"
      elsif choice == "To_Do_List_two"
        return "To_Do_List_two"
      #etc...
      end 
    end

    def create_user(name)
      name.downcase = User.create(name: "#{name.upcase}")
    end 
        # login_or_signup
        # wanna_see_favs?
        # get_joke(what_subject)
    end

    private

  

