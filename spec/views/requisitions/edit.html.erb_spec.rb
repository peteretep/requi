require 'rails_helper'

RSpec.describe "requisitions/edit", type: :view do
  before(:each) do
    @requisition = assign(:requisition, Requisition.create!(
      :vendor => "MyString",
      :purchaser => "MyString"
    ))
  end

  it "renders the edit requisition form" do
    render

    assert_select "form[action=?][method=?]", requisition_path(@requisition), "post" do

      assert_select "input#requisition_vendor[name=?]", "requisition[vendor]"

      assert_select "input#requisition_purchaser[name=?]", "requisition[purchaser]"
    end
  end
end
