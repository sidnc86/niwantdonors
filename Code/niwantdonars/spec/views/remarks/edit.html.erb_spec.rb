require 'spec_helper'

describe "remarks/edit" do
  before(:each) do
    @remark = assign(:remark, stub_model(Remark,
      :name => "MyString"
    ))
  end

  it "renders the edit remark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => remarks_path(@remark), :method => "post" do
      assert_select "input#remark_name", :name => "remark[name]"
    end
  end
end
