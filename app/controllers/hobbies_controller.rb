class HobbiesController < ApplicationController
  def index
    @hobbies = Hobby.all
  end

  def new
    @hobby = Hobby.new
  end

end
