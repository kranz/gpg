require "spec_helper"

describe BusinessTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/business_types").should route_to("business_types#index")
    end

    it "routes to #new" do
      get("/business_types/new").should route_to("business_types#new")
    end

    it "routes to #show" do
      get("/business_types/1").should route_to("business_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/business_types/1/edit").should route_to("business_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/business_types").should route_to("business_types#create")
    end

    it "routes to #update" do
      put("/business_types/1").should route_to("business_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/business_types/1").should route_to("business_types#destroy", :id => "1")
    end

  end
end
