require 'spec_helper'

describe "contracts/index.html.erb" do
  before(:each) do
    assign(:contracts, [
      stub_model(Contract,
        :customer_id => 1,
        :collector_id => 1,
        :account_id => 1,
        :business_type_id => 1,
        :number => "Number",
        :type => "Type",
        :block_flag => false,
        :invoicing_freq => 1,
        :invoicing_months => "Invoicing Months"
      ),
      stub_model(Contract,
        :customer_id => 1,
        :collector_id => 1,
        :account_id => 1,
        :business_type_id => 1,
        :number => "Number",
        :type => "Type",
        :block_flag => false,
        :invoicing_freq => 1,
        :invoicing_months => "Invoicing Months"
      )
    ])
  end

  it "renders a list of contracts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Number".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Type".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => false.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Invoicing Months".to_s, :count => 2
  end
end
