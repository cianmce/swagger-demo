require "rails_helper"

RSpec.describe Api::V1::PetsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/api/v1/pets").to route_to("api/v1/pets#index")
    end

    it "routes to #show" do
      expect(get: "/api/v1/pets/1").to route_to("api/v1/pets#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/api/v1/pets").to route_to("api/v1/pets#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/api/v1/pets/1").to route_to("api/v1/pets#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/api/v1/pets/1").to route_to("api/v1/pets#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/api/v1/pets/1").to route_to("api/v1/pets#destroy", id: "1")
    end
  end
end
