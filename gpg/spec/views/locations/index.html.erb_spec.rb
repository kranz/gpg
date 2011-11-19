require 'spec_helper'

describe "locations/index.html.erb" do
  before(:each) do
    assign(:locations, [
      stub_model(Location,
        :name => "Name",
        :type => "Type",
        :zip => "Zip",
        :comune => "Comune",
        :provincia => "Provincia",
        :numero_civico => "Numero Civico",
        :estensione_civico => "Estensione Civico",
        :nomero_interno => "Nomero Interno",
        :estensione_interno => "Estensione Interno",
        :customer_id => 1
      ),
      stub_model(Location,
        :name => "Name",
        :type => "Type",
        :zip => "Zip",
        :comune => "Comune",
        :provincia => "Provincia",
        :numero_civico => "Numero Civico",
        :estensione_civico => "Estensione Civico",
        :nomero_interno => "Nomero Interno",
        :estensione_interno => "Estensione Interno",
        :customer_id => 1
      )
    ])
  end

  it "renders a list of locations" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Comune".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Provincia".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Numero Civico".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Estensione Civico".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nomero Interno".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Estensione Interno".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
