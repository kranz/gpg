require 'spec_helper'

describe "contract_types/show.html.erb" do
  before(:each) do
    @contract_type = assign(:contract_type, stub_model(ContractType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
