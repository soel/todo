require 'spec_helper'

describe "order_attachments/show" do
  before(:each) do
    @order_attachment = assign(:order_attachment, stub_model(OrderAttachment,
      :order_id => 1,
      :document => "Document"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Document/)
  end
end
