require 'spec_helper'

describe "customers/new.html.erb" do
  before(:each) do
    assign(:customer, stub_model(Customer,
      :name => "MyString",
      :vatcode => "MyString",
      :fiscalcode => "MyString",
      :code => "MyString"
    ).as_new_record)
  end

  it "renders new customer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => customers_path, :method => "post" do
      assert_select "input#customer_name", :name => "customer[name]"
      assert_select "input#customer_vatcode", :name => "customer[vatcode]"
      assert_select "input#customer_fiscalcode", :name => "customer[fiscalcode]"
      assert_select "input#customer_code", :name => "customer[code]"
    end
  end
end
