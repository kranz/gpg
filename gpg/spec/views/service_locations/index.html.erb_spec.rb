require 'spec_helper'

describe "service_locations/index.html.erb" do
  before(:each) do
    assign(:service_locations, [
      stub_model(ServiceLocation,
        :location_id => 1,
        :contract_id => 1,
        :sequence => 1,
        :sort_flag => false
      ),
      stub_model(ServiceLocation,
        :location_id => 1,
        :contract_id => 1,
        :sequence => 1,
        :sort_flag => false
      )
    ])
  end

  it "renders a list of service_locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
