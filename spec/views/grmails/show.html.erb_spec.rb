require 'spec_helper'

describe "grmails/show" do
  before(:each) do
    @grmail = assign(:grmail, stub_model(Grmail,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end
