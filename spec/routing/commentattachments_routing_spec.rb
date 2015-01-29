require "spec_helper"

describe CommentattachmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/commentattachments").should route_to("commentattachments#index")
    end

    it "routes to #new" do
      get("/commentattachments/new").should route_to("commentattachments#new")
    end

    it "routes to #show" do
      get("/commentattachments/1").should route_to("commentattachments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/commentattachments/1/edit").should route_to("commentattachments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/commentattachments").should route_to("commentattachments#create")
    end

    it "routes to #update" do
      put("/commentattachments/1").should route_to("commentattachments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/commentattachments/1").should route_to("commentattachments#destroy", :id => "1")
    end

  end
end
