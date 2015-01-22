require "spec_helper"

describe GrmailsController do
  describe "routing" do

    it "routes to #index" do
      get("/grmails").should route_to("grmails#index")
    end

    it "routes to #new" do
      get("/grmails/new").should route_to("grmails#new")
    end

    it "routes to #show" do
      get("/grmails/1").should route_to("grmails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/grmails/1/edit").should route_to("grmails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/grmails").should route_to("grmails#create")
    end

    it "routes to #update" do
      put("/grmails/1").should route_to("grmails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/grmails/1").should route_to("grmails#destroy", :id => "1")
    end

  end
end
