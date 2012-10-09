require "spec_helper"

describe RemarksController do
  describe "routing" do

    it "routes to #index" do
      get("/remarks").should route_to("remarks#index")
    end

    it "routes to #new" do
      get("/remarks/new").should route_to("remarks#new")
    end

    it "routes to #show" do
      get("/remarks/1").should route_to("remarks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/remarks/1/edit").should route_to("remarks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/remarks").should route_to("remarks#create")
    end

    it "routes to #update" do
      put("/remarks/1").should route_to("remarks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/remarks/1").should route_to("remarks#destroy", :id => "1")
    end

  end
end
