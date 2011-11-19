require 'spec_helper'

describe "customers/edit.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "MyString",
      :vatcode => "MyString",
      :fiscalcode => "MyString",
      :code => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path(@customer), :method => "post" do
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_vatcode", :name => "customer[vatcode]"
      assert_select "input#customer_fiscalcode", :name => "customer[fiscalcode]"
      assert_select "input#customer_code", :name => "customer[code]"
    end
  end
end
