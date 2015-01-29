require 'spec_helper'

describe "commentattachments/edit" do
  before(:each) do
    @commentattachment = assign(:commentattachment, stub_model(Commentattachment,
      :comment_id => 1,
      :document => "MyString"
    ))
  end

  it "renders the edit commentattachment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", commentattachment_path(@commentattachment), "post" do
      assert_select "input#commentattachment_comment_id[name=?]", "commentattachment[comment_id]"
      assert_select "input#commentattachment_document[name=?]", "commentattachment[document]"
    end
  end
end
