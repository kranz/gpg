require 'spec_helper'

describe "business_types/edit.html.erb" do
  before(:each) do
    @business_type = assign(:business_type, stub_model(BusinessType,
      :name => "MyString"
    ))
  end

  it "renders the edit business_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => business_types_path(@business_type), :method => "post" do
      assert_select "input#business_type_name", :name => "business_type[name]"
    end
  end
end
