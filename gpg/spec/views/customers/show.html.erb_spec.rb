require 'spec_helper'

describe "customers/show.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :name => "Name",
      :vatcode => "Vatcode",
      :fiscalcode => "Fiscalcode",
      :code => "Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Vatcode/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fiscalcode/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Code/)
  end
end
