require 'spec_helper'

describe "esattori/new.html.erb" do
  before(:each) do
    assign(:esattore, stub_model(Esattore,
      :name => "MyString",
      :code => "MyString",
      :tipo => "MyString",
      :tipo_indennita => "MyString",
      :valore_indennita => 1
    ).as_new_record)
  end

  it "renders new esattore form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => esattori_path, :method => "post" do
      assert_select "input#esattore_name", :name => "esattore[name]"
      assert_select "input#esattore_code", :name => "esattore[code]"
      assert_select "input#esattore_tipo", :name => "esattore[tipo]"
      assert_select "input#esattore_tipo_indennita", :name => "esattore[tipo_indennita]"
      assert_select "input#esattore_valore_indennita", :name => "esattore[valore_indennita]"
    end
  end
end
