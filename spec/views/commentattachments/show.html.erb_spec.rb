require 'spec_helper'

describe "commentattachments/show" do
  before(:each) do
    @commentattachment = assign(:commentattachment, stub_model(Commentattachment,
      :comment_id => 1,
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
