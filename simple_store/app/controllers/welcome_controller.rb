class WelcomeController < ApplicationController
  def index
    @catalog = Catalog.last
  end
end