require 'spec_helper'

describe "likes/show" do
  before(:each) do
    @like = assign(:like, stub_model(Like,
      :likeable_id => 1,
      :likeable_type => "Likeable Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Likeable Type/)
  end
end
