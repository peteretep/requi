require 'rails_helper'

RSpec.describe "requi_answers/edit", type: :view do
  before(:each) do
    @requi_answer = assign(:requi_answer, RequiAnswer.create!(
      :requisition => nil,
      :requi_question => nil,
      :question => nil,
      :text => "MyString"
    ))
  end

  it "renders the edit requi_answer form" do
    render

    assert_select "form[action=?][method=?]", requi_answer_path(@requi_answer), "post" do

      assert_select "input#requi_answer_requisition_id[name=?]", "requi_answer[requisition_id]"

      assert_select "input#requi_answer_requi_question_id[name=?]", "requi_answer[requi_question_id]"

      assert_select "input#requi_answer_question_id[name=?]", "requi_answer[question_id]"

      assert_select "input#requi_answer_text[name=?]", "requi_answer[text]"
    end
  end
end
