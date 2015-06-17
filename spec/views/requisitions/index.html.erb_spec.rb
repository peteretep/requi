require 'rails_helper'

RSpec.describe "requisitions/index", type: :view do
  before(:each) do
    assign(:requisitions, [
      Requisition.create!(
        :vendor => "Vendor",
        :purchaser => "Purchaser"
      ),
      Requisition.create!(
        :vendor => "Vendor",
        :purchaser => "Purchaser"
      )
    ])
  end

  it "renders a list of requisitions" do
    render
    assert_select "tr>td", :text => "Vendor".to_s, :count => 2
    assert_select "tr>td", :text => "Purchaser".to_s, :count => 2
  end
end
