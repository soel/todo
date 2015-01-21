require 'spec_helper'

describe "orders/edit" do
  before(:each) do
    @order = assign(:order, stub_model(Order,
      :contract_number => 1,
      :customer_id => 1,
      :request_destination => "MyText",
      :status => "MyText",
      :web_url => "MyText"
    ))
  end

  it "renders the edit order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_path(@order), "post" do
      assert_select "input#order_contract_number[name=?]", "order[contract_number]"
      assert_select "input#order_customer_id[name=?]", "order[customer_id]"
      assert_select "textarea#order_request_destination[name=?]", "order[request_destination]"
      assert_select "textarea#order_status[name=?]", "order[status]"
      assert_select "textarea#order_web_url[name=?]", "order[web_url]"
    end
  end
end
