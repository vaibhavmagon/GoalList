require 'spec_helper'

describe "likes/edit" do
  before(:each) do
    @like = assign(:like, stub_model(Like,
      :likeable_id => 1,
      :likeable_type => "MyString"
    ))
  end

  it "renders the edit like form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => likes_path(@like), :method => "post" do
      assert_select "input#like_likeable_id", :name => "like[likeable_id]"
      assert_select "input#like_likeable_type", :name => "like[likeable_type]"
    end
  end
end
