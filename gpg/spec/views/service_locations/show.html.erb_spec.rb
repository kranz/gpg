require 'spec_helper'

describe "service_locations/show.html.erb" do
  before(:each) do
    @service_location = assign(:service_location, stub_model(ServiceLocation,
      :location_id => 1,
      :contract_id => 1,
      :sequence => 1,
      :sort_flag => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
  end
end
