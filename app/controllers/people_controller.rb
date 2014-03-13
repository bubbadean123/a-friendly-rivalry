class PeopleController < ApplicationController

  def new
  end

  def create
    @person = Person.new(params[:post])
    @person.save
    redirect_to @person
  end

  def show
    @person = Person.find(params[:id]) 
  end

end
