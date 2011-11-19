require 'spec_helper'

describe "accounts/index.html.erb" do
  before(:each) do
    assign(:accounts, [
      stub_model(Account,
        :codmastro => "Codmastro",
        :mastro => "Mastro",
        :codconto => "Codconto",
        :conto => "Conto",
        :codsottoconto => "Codsottoconto",
        :sottoconto => "Sottoconto"
      ),
      stub_model(Account,
        :codmastro => "Codmastro",
        :mastro => "Mastro",
        :codconto => "Codconto",
        :conto => "Conto",
        :codsottoconto => "Codsottoconto",
        :sottoconto => "Sottoconto"
      )
    ])
  end

  it "renders a list of accounts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codmastro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mastro".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codconto".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Conto".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codsottoconto".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sottoconto".to_s, :count => 2
  end
end
