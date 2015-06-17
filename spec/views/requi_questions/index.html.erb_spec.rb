require 'rails_helper'

RSpec.describe "requi_questions/index", type: :view do
  before(:each) do
    assign(:requi_questions, [
      RequiQuestion.create!(
        :requisition => nil,
        :question => nil
      ),
      RequiQuestion.create!(
        :requisition => nil,
        :question => nil
      )
    ])
  end

  it "renders a list of requi_questions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
