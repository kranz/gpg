require 'spec_helper'

describe "accounts/show.html.erb" do
  before(:each) do
    @account = assign(:account, stub_model(Account,
      :codmastro => "Codmastro",
      :mastro => "Mastro",
      :codconto => "Codconto",
      :conto => "Conto",
      :codsottoconto => "Codsottoconto",
      :sottoconto => "Sottoconto"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codmastro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mastro/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codconto/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Conto/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codsottoconto/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Sottoconto/)
  end
end
