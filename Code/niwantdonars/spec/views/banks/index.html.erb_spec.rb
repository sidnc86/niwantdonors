require 'spec_helper'

describe "banks/index" do
  before(:each) do
    assign(:banks, [
      stub_model(Bank,
        :name => "Name",
        :branch => "Branch",
        :ifsc => "Ifsc"
      ),
      stub_model(Bank,
        :name => "Name",
        :branch => "Branch",
        :ifsc => "Ifsc"
      )
    ])
  end

  it "renders a list of banks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Branch".to_s, :count => 2
    assert_select "tr>td", :text => "Ifsc".to_s, :count => 2
  end
end
