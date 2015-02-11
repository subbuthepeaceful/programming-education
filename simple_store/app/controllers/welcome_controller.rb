class WelcomeController < ApplicationController
  def index
    @catalog = Catalog.first
  end
end