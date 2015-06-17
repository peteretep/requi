require 'rails_helper'

RSpec.describe "requisitions/show", type: :view do
  before(:each) do
    @requisition = assign(:requisition, Requisition.create!(
      :vendor => "Vendor",
      :purchaser => "Purchaser"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Vendor/)
    expect(rendered).to match(/Purchaser/)
  end
end
