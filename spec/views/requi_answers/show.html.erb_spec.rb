require 'rails_helper'

RSpec.describe "requi_answers/show", type: :view do
  before(:each) do
    @requi_answer = assign(:requi_answer, RequiAnswer.create!(
      :requisition => nil,
      :requi_question => nil,
      :question => nil,
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Text/)
  end
end
