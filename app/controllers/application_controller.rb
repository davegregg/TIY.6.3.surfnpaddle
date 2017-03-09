class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action ->{
    @title = 'Surf & Paddle Co.'
    @subtitle = 'An Ironyard Academy Project Est. Fall 2013'
  }
  
end
