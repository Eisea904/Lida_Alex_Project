class User < ActiveRecord::Base
  # add associatons!
   has_many :todolists
   has_many :categories, through: :todolists
  
      def self.registration

        usersInfo = TTY::Prompt.new.ask("What is your username?")
        #nameInfo = TTY::Prompt.new.ask("What is your name?")

          if User.find_by(name: usersInfo)
            puts "Looks like that username is alredy being used."
          else
            User.create(name: usersInfo)
          end 
      end

  
      def self.sign_in
        userInput = TTY::Prompt.new.ask("What is your log in info?")

          if User.find_by(name: userInput)
            puts "That is incorrect, please try again"
          else
            User.find(name: userInput)
          end
      end

      def my_todolists
        Todolist.all.select do |todolist_details|
          todolist_details.user == self
        end
      end
  

      def list_update_notes
    
      # access every todolist that has them as a user

        prompt.select("Which list do you want to update", %w(Activity, Errand, Event)) 
         
      # person can then select the item to update
        
      # person enters new information into the selected item
          # if Activity 
          #   update activity_item and save
          # elsif Errand update errand_item and save
          # elsif Event update event_item and save
          #   exit
          #   sleep(0.3)
          # end
            

            
      # person saves the update
      # person exits app
    
    
    
  end

  def remove_completed_list #helper method
    prompt.select("Which list do you want to delete", %w(my_todolists))
    # person needs to access their list
    # person can then select item to destroy
        # one of these options will be destroy_all
        # if Activity 
          #   update activity_item and save
          # elsif Errand update errand_item and save
          # elsif Event update event_item and save
          #   exit
          #   sleep(0.3)
          # end
    # person exits app
  end
end




