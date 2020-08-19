class User < ActiveRecord::Base
  # add associatons!
  has_many :todolists
  has_many :categories, through: :todolists
  
  def self.registration
    usersInfo = TTY::Prompt.new.ask("username?")
    nameInfo = TTY::Prompt.new.ask("What is your name?")
    if User.find_by(name: usersInfo)
      puts "Looks like that username is alredy being used."
    else
      User.create(name: usersInfo)
    end 
  end
  
end
