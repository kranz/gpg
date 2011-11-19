require 'spec_helper'

describe "accounts/edit.html.erb" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :codmastro => "MyString",
      :mastro => "MyString",
      :codconto => "MyString",
      :conto => "MyString",
      :codsottoconto => "MyString",
      :sottoconto => "MyString"
    ))
  end

  it "renders the edit account form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => accounts_path(@account), :method => "post" do
      assert_select "input#account_codmastro", :name => "account[codmastro]"
      assert_select "input#account_mastro", :name => "account[mastro]"
      assert_select "input#account_codconto", :name => "account[codconto]"
      assert_select "input#account_conto", :name => "account[conto]"
      assert_select "input#account_codsottoconto", :name => "account[codsottoconto]"
      assert_select "input#account_sottoconto", :name => "account[sottoconto]"
    end
  end
end
