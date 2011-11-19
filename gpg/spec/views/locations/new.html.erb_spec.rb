require 'spec_helper'

describe "locations/new.html.erb" do
  before(:each) do
    assign(:location, stub_model(Location,
      :name => "MyString",
      :type => "",
      :zip => "MyString",
      :comune => "MyString",
      :provincia => "MyString",
      :numero_civico => "MyString",
      :estensione_civico => "MyString",
      :nomero_interno => "MyString",
      :estensione_interno => "MyString",
      :customer_id => 1
    ).as_new_record)
  end

  it "renders new location form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => locations_path, :method => "post" do
      assert_select "input#location_name", :name => "location[name]"
      assert_select "input#location_type", :name => "location[type]"
      assert_select "input#location_zip", :name => "location[zip]"
      assert_select "input#location_comune", :name => "location[comune]"
      assert_select "input#location_provincia", :name => "location[provincia]"
      assert_select "input#location_numero_civico", :name => "location[numero_civico]"
      assert_select "input#location_estensione_civico", :name => "location[estensione_civico]"
      assert_select "input#location_nomero_interno", :name => "location[nomero_interno]"
      assert_select "input#location_estensione_interno", :name => "location[estensione_interno]"
      assert_select "input#location_customer_id", :name => "location[customer_id]"
    end
  end
end
