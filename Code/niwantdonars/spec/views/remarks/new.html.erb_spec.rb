require 'spec_helper'

describe "remarks/new" do
  before(:each) do
    assign(:remark, stub_model(Remark,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new remark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => remarks_path, :method => "post" do
      assert_select "input#remark_name", :name => "remark[name]"
    end
  end
end
