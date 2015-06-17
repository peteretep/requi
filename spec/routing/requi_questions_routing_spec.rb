require "rails_helper"

RSpec.describe RequiQuestionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/requi_questions").to route_to("requi_questions#index")
    end

    it "routes to #new" do
      expect(:get => "/requi_questions/new").to route_to("requi_questions#new")
    end

    it "routes to #show" do
      expect(:get => "/requi_questions/1").to route_to("requi_questions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/requi_questions/1/edit").to route_to("requi_questions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/requi_questions").to route_to("requi_questions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/requi_questions/1").to route_to("requi_questions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/requi_questions/1").to route_to("requi_questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/requi_questions/1").to route_to("requi_questions#destroy", :id => "1")
    end

  end
end
