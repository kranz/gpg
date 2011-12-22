require "spec_helper"

describe EsattoriController do
  describe "routing" do

    it "routes to #index" do
      get("/esattori").should route_to("esattori#index")
    end

    it "routes to #new" do
      get("/esattori/new").should route_to("esattori#new")
    end

    it "routes to #show" do
      get("/esattori/1").should route_to("esattori#show", :id => "1")
    end

    it "routes to #edit" do
      get("/esattori/1/edit").should route_to("esattori#edit", :id => "1")
    end

    it "routes to #create" do
      post("/esattori").should route_to("esattori#create")
    end

    it "routes to #update" do
      put("/esattori/1").should route_to("esattori#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/esattori/1").should route_to("esattori#destroy", :id => "1")
    end

  end
end
