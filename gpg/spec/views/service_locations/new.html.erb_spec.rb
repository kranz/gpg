require 'spec_helper'

describe "service_locations/new.html.erb" do
  before(:each) do
    assign(:service_location, stub_model(ServiceLocation,
      :location_id => 1,
      :contract_id => 1,
      :sequence => 1,
      :sort_flag => false
    ).as_new_record)
  end

  it "renders new service_location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => service_locations_path, :method => "post" do
      assert_select "input#service_location_location_id", :name => "service_location[location_id]"
      assert_select "input#service_location_contract_id", :name => "service_location[contract_id]"
      assert_select "input#service_location_sequence", :name => "service_location[sequence]"
      assert_select "input#service_location_sort_flag", :name => "service_location[sort_flag]"
    end
  end
end
