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
end
