class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(params[:post])

    if @person.save
      redirect_to @person
    else
      render 'new'
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])

    if @person.update_attributes(
        :combatant_name => params[:person][:combatant_name],
        :combatant_description => params[:person][:combatant_description]
        )
      redirect_to @person
    else
      render 'edit'
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy

    redirect_to people_path
  end

  def show
    @person = Person.find(params[:id])
  end

  def index
    @people = Person.all
  end

end
