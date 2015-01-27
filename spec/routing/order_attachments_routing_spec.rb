require "spec_helper"

describe OrderAttachmentsController do
  describe "routing" do

    it "routes to #index" do
      get("/order_attachments").should route_to("order_attachments#index")
    end

    it "routes to #new" do
      get("/order_attachments/new").should route_to("order_attachments#new")
    end

    it "routes to #show" do
      get("/order_attachments/1").should route_to("order_attachments#show", :id => "1")
    end

    it "routes to #edit" do
      get("/order_attachments/1/edit").should route_to("order_attachments#edit", :id => "1")
    end

    it "routes to #create" do
      post("/order_attachments").should route_to("order_attachments#create")
    end

    it "routes to #update" do
      put("/order_attachments/1").should route_to("order_attachments#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/order_attachments/1").should route_to("order_attachments#destroy", :id => "1")
    end

  end
end
