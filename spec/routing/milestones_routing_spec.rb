require "spec_helper"

describe MilestonesController do
  describe "routing" do

    it "routes to #index" do
      get("/milestones").should route_to("milestones#index")
    end

    it "routes to #new" do
      get("/milestones/new").should route_to("milestones#new")
    end

    it "routes to #show" do
      get("/milestones/1").should route_to("milestones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/milestones/1/edit").should route_to("milestones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/milestones").should route_to("milestones#create")
    end

    it "routes to #update" do
      put("/milestones/1").should route_to("milestones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/milestones/1").should route_to("milestones#destroy", :id => "1")
    end

  end
end
