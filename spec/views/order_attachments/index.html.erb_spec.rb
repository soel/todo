require 'spec_helper'

describe "order_attachments/index" do
  before(:each) do
    assign(:order_attachments, [
      stub_model(OrderAttachment,
        :order_id => 1,
        :document => "Document"
      ),
      stub_model(OrderAttachment,
        :order_id => 1,
        :document => "Document"
      )
    ])
  end

  it "renders a list of order_attachments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Document".to_s, :count => 2
  end
end
