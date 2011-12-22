require "spec_helper"

describe ServiceLocationsController do
  describe "routing" do

    it "routes to #index" do
      get("/service_locations").should route_to("service_locations#index")
    end

    it "routes to #new" do
      get("/service_locations/new").should route_to("service_locations#new")
    end

    it "routes to #show" do
      get("/service_locations/1").should route_to("service_locations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/service_locations/1/edit").should route_to("service_locations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/service_locations").should route_to("service_locations#create")
    end

    it "routes to #update" do
      put("/service_locations/1").should route_to("service_locations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/service_locations/1").should route_to("service_locations#destroy", :id => "1")
    end

  end
end
