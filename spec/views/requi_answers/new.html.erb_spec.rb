require 'rails_helper'

RSpec.describe "requi_answers/new", type: :view do
  before(:each) do
    assign(:requi_answer, RequiAnswer.new(
      :requisition => nil,
      :requi_question => nil,
      :question => nil,
      :text => "MyString"
    ))
  end

  it "renders new requi_answer form" do
    render

    assert_select "form[action=?][method=?]", requi_answers_path, "post" do

      assert_select "input#requi_answer_requisition_id[name=?]", "requi_answer[requisition_id]"

      assert_select "input#requi_answer_requi_question_id[name=?]", "requi_answer[requi_question_id]"

      assert_select "input#requi_answer_question_id[name=?]", "requi_answer[question_id]"

      assert_select "input#requi_answer_text[name=?]", "requi_answer[text]"
    end
  end
end
