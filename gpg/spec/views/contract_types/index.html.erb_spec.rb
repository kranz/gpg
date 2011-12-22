require 'spec_helper'

describe "contract_types/index.html.erb" do
  before(:each) do
    assign(:contract_types, [
      stub_model(ContractType,
        :name => "Name"
      ),
      stub_model(ContractType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of contract_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
