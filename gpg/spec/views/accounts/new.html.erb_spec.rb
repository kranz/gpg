require 'spec_helper'

describe "accounts/new.html.erb" do
  before(:each) do
    assign(:account, stub_model(Account,
      :codmastro => "MyString",
      :mastro => "MyString",
      :codconto => "MyString",
      :conto => "MyString",
      :codsottoconto => "MyString",
      :sottoconto => "MyString"
    ).as_new_record)
  end

  it "renders new account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path, :method => "post" do
      assert_select "input#account_codmastro", :name => "account[codmastro]"
      assert_select "input#account_mastro", :name => "account[mastro]"
      assert_select "input#account_codconto", :name => "account[codconto]"
      assert_select "input#account_conto", :name => "account[conto]"
      assert_select "input#account_codsottoconto", :name => "account[codsottoconto]"
      assert_select "input#account_sottoconto", :name => "account[sottoconto]"
    end
  end
end
