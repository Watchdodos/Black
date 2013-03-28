class PagesController  < ApplicationController 
  def home
  	@page = 'home'
  	@doll = Doll.new 
  	@pin = Pin.new
  end

def about
	@page = 'about'
@doll = Doll.new 
@pin = Pin.new
end

def action

  end
end
