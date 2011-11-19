require 'spec_helper'

describe "locations/show.html.erb" do
  before(:each) do
    @location = assign(:location, stub_model(Location,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zip/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Comune/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Provincia/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Numero Civico/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Estensione Civico/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nomero Interno/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Estensione Interno/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
