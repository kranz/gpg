require 'spec_helper'

describe "business_types/show.html.erb" do
  before(:each) do
    @business_type = assign(:business_type, stub_model(BusinessType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
