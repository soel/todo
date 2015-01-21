require 'spec_helper'

describe "orders/index" do
  before(:each) do
    assign(:orders, [
      stub_model(Order,
        :contract_number => 1,
        :customer_id => 2,
        :request_destination => "MyText",
        :status => "MyText",
        :web_url => "MyText"
      ),
      stub_model(Order,
        :contract_number => 1,
        :customer_id => 2,
        :request_destination => "MyText",
        :status => "MyText",
        :web_url => "MyText"
      )
    ])
  end

  it "renders a list of orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
