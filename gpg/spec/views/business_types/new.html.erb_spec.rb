require 'spec_helper'

describe "business_types/new.html.erb" do
  before(:each) do
    assign(:business_type, stub_model(BusinessType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new business_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => business_types_path, :method => "post" do
      assert_select "input#business_type_name", :name => "business_type[name]"
    end
  end
end
