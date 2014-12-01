require 'spec_helper'

describe "likes/new" do
  before(:each) do
    assign(:like, stub_model(Like,
      :likeable_id => 1,
      :likeable_type => "MyString"
    ).as_new_record)
  end

  it "renders new like form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => likes_path, :method => "post" do
      assert_select "input#like_likeable_id", :name => "like[likeable_id]"
      assert_select "input#like_likeable_type", :name => "like[likeable_type]"
    end
  end
end
