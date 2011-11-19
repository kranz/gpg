require 'spec_helper'

describe "contracts/show.html.erb" do
  before(:each) do
    @contract = assign(:contract, stub_model(Contract,
      :customer_id => 1,
      :collector_id => 1,
      :account_id => 1,
      :business_type_id => 1,
      :number => "Number",
      :type => "Type",
      :block_flag => false,
      :invoicing_freq => 1,
      :invoicing_months => "Invoicing Months"
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
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Number/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Type/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/false/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Invoicing Months/)
  end
end
