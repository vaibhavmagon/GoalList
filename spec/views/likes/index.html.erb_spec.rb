require 'spec_helper'

describe "likes/index" do
  before(:each) do
    assign(:likes, [
      stub_model(Like,
        :likeable_id => 1,
        :likeable_type => "Likeable Type"
      ),
      stub_model(Like,
        :likeable_id => 1,
        :likeable_type => "Likeable Type"
      )
    ])
  end

  it "renders a list of likes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Likeable Type".to_s, :count => 2
  end
end
