require 'spec_helper'

describe "banks/show" do
  before(:each) do
    @bank = assign(:bank, stub_model(Bank,
      :name => "Name",
      :branch => "Branch",
      :ifsc => "Ifsc"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Branch/)
    rendered.should match(/Ifsc/)
  end
end
