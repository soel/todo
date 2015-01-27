require 'spec_helper'

describe "order_attachments/edit" do
  before(:each) do
    @order_attachment = assign(:order_attachment, stub_model(OrderAttachment,
      :order_id => 1,
      :document => "MyString"
    ))
  end

  it "renders the edit order_attachment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", order_attachment_path(@order_attachment), "post" do
      assert_select "input#order_attachment_order_id[name=?]", "order_attachment[order_id]"
      assert_select "input#order_attachment_document[name=?]", "order_attachment[document]"
    end
  end
end
