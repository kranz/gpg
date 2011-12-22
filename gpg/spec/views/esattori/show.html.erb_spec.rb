require 'spec_helper'

describe "esattori/show.html.erb" do
  before(:each) do
    @esattore = assign(:esattore, stub_model(Esattore,
      :name => "Name",
      :code => "Code",
      :tipo => "Tipo",
      :tipo_indennita => "Tipo Indennita",
      :valore_indennita => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo Indennita/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
