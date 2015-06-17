require 'rails_helper'

RSpec.describe "requi_questions/show", type: :view do
  before(:each) do
    @requi_question = assign(:requi_question, RequiQuestion.create!(
      :requisition => nil,
      :question => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
