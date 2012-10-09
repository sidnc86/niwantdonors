require 'spec_helper'

describe "banks/new" do
  before(:each) do
    assign(:bank, stub_model(Bank,
      :name => "MyString",
      :branch => "MyString",
      :ifsc => "MyString"
    ).as_new_record)
  end

  it "renders new bank form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => banks_path, :method => "post" do
      assert_select "input#bank_name", :name => "bank[name]"
      assert_select "input#bank_branch", :name => "bank[branch]"
      assert_select "input#bank_ifsc", :name => "bank[ifsc]"
    end
  end
end
