require "rails_helper"

RSpec.describe CatalogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/catalogs").to route_to("catalogs#index")
    end

    it "routes to #new" do
      expect(:get => "/catalogs/new").to route_to("catalogs#new")
    end

    it "routes to #show" do
      expect(:get => "/catalogs/1").to route_to("catalogs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/catalogs/1/edit").to route_to("catalogs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/catalogs").to route_to("catalogs#create")
    end

    it "routes to #update" do
      expect(:put => "/catalogs/1").to route_to("catalogs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/catalogs/1").to route_to("catalogs#destroy", :id => "1")
    end

  end
end
