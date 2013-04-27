require "spec_helper"

describe EventParticipationsController do
  describe "routing" do

    it "routes to #index" do
      get("/event_participations").should route_to("event_participations#index")
    end

    it "routes to #new" do
      get("/event_participations/new").should route_to("event_participations#new")
    end

    it "routes to #show" do
      get("/event_participations/1").should route_to("event_participations#show", :id => "1")
    end

    it "routes to #edit" do
      get("/event_participations/1/edit").should route_to("event_participations#edit", :id => "1")
    end

    it "routes to #create" do
      post("/event_participations").should route_to("event_participations#create")
    end

    it "routes to #update" do
      put("/event_participations/1").should route_to("event_participations#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/event_participations/1").should route_to("event_participations#destroy", :id => "1")
    end

  end
end
