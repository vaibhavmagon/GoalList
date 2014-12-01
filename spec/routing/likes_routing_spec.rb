require "spec_helper"

describe LikesController do
  describe "routing" do

    it "routes to #index" do
      get("/likes").should route_to("likes#index")
    end

    it "routes to #new" do
      get("/likes/new").should route_to("likes#new")
    end

    it "routes to #show" do
      get("/likes/1").should route_to("likes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/likes/1/edit").should route_to("likes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/likes").should route_to("likes#create")
    end

    it "routes to #update" do
      put("/likes/1").should route_to("likes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/likes/1").should route_to("likes#destroy", :id => "1")
    end

  end
end
