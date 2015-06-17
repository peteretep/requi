require 'rails_helper'

RSpec.describe "requi_answers/index", type: :view do
  before(:each) do
    assign(:requi_answers, [
      RequiAnswer.create!(
        :requisition => nil,
        :requi_question => nil,
        :question => nil,
        :text => "Text"
      ),
      RequiAnswer.create!(
        :requisition => nil,
        :requi_question => nil,
        :question => nil,
        :text => "Text"
      )
    ])
  end

  it "renders a list of requi_answers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
