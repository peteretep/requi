require 'rails_helper'

RSpec.describe "requi_questions/edit", type: :view do
  before(:each) do
    @requi_question = assign(:requi_question, RequiQuestion.create!(
      :requisition => nil,
      :question => nil
    ))
  end

  it "renders the edit requi_question form" do
    render

    assert_select "form[action=?][method=?]", requi_question_path(@requi_question), "post" do

      assert_select "input#requi_question_requisition_id[name=?]", "requi_question[requisition_id]"

      assert_select "input#requi_question_question_id[name=?]", "requi_question[question_id]"
    end
  end
end
