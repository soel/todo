require 'spec_helper'

describe "grmails/edit" do
  before(:each) do
    @grmail = assign(:grmail, stub_model(Grmail,
      :email => "MyString"
    ))
  end

  it "renders the edit grmail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", grmail_path(@grmail), "post" do
      assert_select "input#grmail_email[name=?]", "grmail[email]"
    end
  end
end
