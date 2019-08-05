class PagesController < ApplicationController


  def home
  end

  def team
  	puts "Did this work??"
  end

  def contact
  	puts "How can we contact you really f*$1@ bastard, nah kidding, we will soon!"
  end

  def welcome_user
  	@first_name = params[:first_name]
  	puts "$" * 60
  	puts params[:first_name]
  	puts "£" * 60
  end

  def all_gossips
  	@all = Gossipp.all
  	puts "$" * 60
  	puts "#{@all}"
  	puts "$" * 60
  end
end
