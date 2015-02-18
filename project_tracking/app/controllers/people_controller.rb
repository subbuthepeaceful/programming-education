class PeopleController < ApplicationController
  def me
  end

  def index
    @users = User.all
  end

  def update_topics
  end
end