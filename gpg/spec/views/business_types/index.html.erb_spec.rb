require 'spec_helper'

describe "business_types/index.html.erb" do
  before(:each) do
    assign(:business_types, [
      stub_model(BusinessType,
        :name => "Name"
      ),
      stub_model(BusinessType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of business_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
