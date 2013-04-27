require "spec_helper"

describe SpeakersController do
  describe "routing" do

    it "routes to #index" do
      get("/speakers").should route_to("speakers#index")
    end

    it "routes to #new" do
      get("/speakers/new").should route_to("speakers#new")
    end

    it "routes to #show" do
      get("/speakers/1").should route_to("speakers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/speakers/1/edit").should route_to("speakers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/speakers").should route_to("speakers#create")
    end

    it "routes to #update" do
      put("/speakers/1").should route_to("speakers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/speakers/1").should route_to("speakers#destroy", :id => "1")
    end

  end
end
