require 'spec_helper'

describe "contract_types/edit.html.erb" do
  before(:each) do
    @contract_type = assign(:contract_type, stub_model(ContractType,
      :name => "MyString"
    ))
  end

  it "renders the edit contract_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => contract_types_path(@contract_type), :method => "post" do
      assert_select "input#contract_type_name", :name => "contract_type[name]"
    end
  end
end
