require "rails_helper"

RSpec.describe PostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/posts").to route_to("posts#index")
    end

    it "routes to #new" do
      expect(get: "/posts/new").to route_to("posts#new")
    end

    it "routes to #show" do
      expect(get: