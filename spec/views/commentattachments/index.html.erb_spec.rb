require 'spec_helper'

describe "commentattachments/index" do
  before(:each) do
    assign(:commentattachments, [
      stub_model(Commentattachment,
        :comment_id => 1,
        :document => "Document"
      ),
      stub_model(Commentattachment,
        :comment_id => 1,
        :document => "Document"
      )
    ])
  end

  it "renders a list of commentattachments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Document".to_s, :count => 2
  end
end
