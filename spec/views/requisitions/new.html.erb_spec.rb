require 'rails_helper'

RSpec.describe "requisitions/new", type: :view do
  before(:each) do
    assign(:requisition, Requisition.new(
      :vendor => "MyString",
      :purchaser => "MyString"
    ))
  end

  it "renders new requisition form" do
    render

    assert_select "form[action=?][method=?]", requisitions_path, "post" do

      assert_select "input#requisition_vendor[name=?]", "requisition[vendor]"

      assert_select "input#requisition_purchaser[name=?]", "requisition[purchaser]"
    end
  end
end
