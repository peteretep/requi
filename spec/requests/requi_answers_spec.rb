require 'rails_helper'

RSpec.describe "RequiAnswers", type: :request do
  describe "GET /requi_answers" do
    it "works! (now write some real specs)" do
      get requi_answers_path
      expect(response).to have_http_status(200)
    end
  end
end
