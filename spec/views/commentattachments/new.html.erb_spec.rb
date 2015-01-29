require 'spec_helper'

describe "commentattachments/new" do
  before(:each) do
    assign(:commentattachment, stub_model(Commentattachment,
      :comment_id => 1,
      :document => "MyString"
    ).as_new_record)
  end

  it "renders new commentattachment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", commentattachments_path, "post" do
      assert_select "input#commentattachment_comment_id[name=?]", "commentattachment[comment_id]"
      assert_select "input#commentattachment_document[name=?]", "commentattachment[document]"
    end
  end
end
