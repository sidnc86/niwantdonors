require 'spec_helper'

describe "remarks/index" do
  before(:each) do
    assign(:remarks, [
      stub_model(Remark,
        :name => "Name"
      ),
      stub_model(Remark,
        :name => "Name"
      )
    ])
  end

  it "renders a list of remarks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
