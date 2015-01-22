require 'spec_helper'

describe "grmails/index" do
  before(:each) do
    assign(:grmails, [
      stub_model(Grmail,
        :email => "Email"
      ),
      stub_model(Grmail,
        :email => "Email"
      )
    ])
  end

  it "renders a list of grmails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
