require "spec_helper"

describe FriendshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/friendships").should route_to("friendships#index")
    end

    it "routes to #new" do
      get("/friendships/new").should route_to("friendships#new")
    end

    it "routes to #show" do
      get("/friendships/1").should route_to("friendships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/friendships/1/edit").should route_to("friendships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/friendships").should route_to("friendships#create")
    end

    it "routes to #update" do
      put("/friendships/1").should route_to("friendships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/friendships/1").should route_to("friendships#destroy", :id => "1")
    end

  end
end
