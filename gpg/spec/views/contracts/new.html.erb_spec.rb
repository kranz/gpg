require 'spec_helper'

describe "contracts/new.html.erb" do
  before(:each) do
    assign(:contract, stub_model(Contract,
      :customer_id => 1,
      :collector_id => 1,
      :account_id => 1,
      :business_type_id => 1,
      :number => "MyString",
      :type => "",
      :block_flag => false,
      :invoicing_freq => 1,
      :invoicing_months => "MyString"
    ).as_new_record)
  end

  it "renders new contract form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contracts_path, :method => "post" do
      assert_select "input#contract_customer_id", :name => "contract[customer_id]"
      assert_select "input#contract_collector_id", :name => "contract[collector_id]"
      assert_select "input#contract_account_id", :name => "contract[account_id]"
      assert_select "input#contract_business_type_id", :name => "contract[business_type_id]"
      assert_select "input#contract_number", :name => "contract[number]"
      assert_select "input#contract_type", :name => "contract[type]"
      assert_select "input#contract_block_flag", :name => "contract[block_flag]"
      assert_select "input#contract_invoicing_freq", :name => "contract[invoicing_freq]"
      assert_select "input#contract_invoicing_months", :name => "contract[invoicing_months]"
    end
  end
end
