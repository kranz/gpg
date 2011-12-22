require 'spec_helper'

describe "esattori/index.html.erb" do
  before(:each) do
    assign(:esattori, [
      stub_model(Esattore,
        :name => "Name",
        :code => "Code",
        :tipo => "Tipo",
        :tipo_indennita => "Tipo Indennita",
        :valore_indennita => 1
      ),
      stub_model(Esattore,
        :name => "Name",
        :code => "Code",
        :tipo => "Tipo",
        :tipo_indennita => "Tipo Indennita",
        :valore_indennita => 1
      )
    ])
  end

  it "renders a list of esattori" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo Indennita".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
