require 'spec_helper'

describe "grmails/new" do
  before(:each) do
    assign(:grmail, stub_model(Grmail,
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new grmail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grmails_path, "post" do
      assert_select "input#grmail_email[name=?]", "grmail[email]"
    end
  end
end
