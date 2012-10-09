require 'spec_helper'

describe "remarks/show" do
  before(:each) do
    @remark = assign(:remark, stub_model(Remark,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
