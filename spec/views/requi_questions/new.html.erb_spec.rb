require 'rails_helper'

RSpec.describe "requi_questions/new", type: :view do
  before(:each) do
    assign(:requi_question, RequiQuestion.new(
      :requisition => nil,
      :question => nil
    ))
  end

  it "renders new requi_question form" do
    render

    assert_select "form[action=?][method=?]", requi_questions_path, "post" do

      assert_select "input#requi_question_requisition_id[name=?]", "requi_question[requisition_id]"

      assert_select "input#requi_question_question_id[name=?]", "requi_question[question_id]"
    end
  end
end
