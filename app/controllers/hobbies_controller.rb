class HobbiesController < ApplicationController
  def index
    @hobbies = Hobby.all
  end

  def new
    @hobby = Hobby.new
  end

  def create
    Hobby.create(hobby_params)
    redirect_to root_path
  end

  private

  def hobby_params
    params.require(:hobby).permit(:name, :description, :address)
  end

end
