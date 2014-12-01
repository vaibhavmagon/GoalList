require 'spec_helper'

describe "milestones/index" do
  before(:each) do
    assign(:milestones, [
      stub_model(Milestone,
        :title => "Title",
        :body => "MyText"
      ),
      stub_model(Milestone,
        :title => "Title",
        :body => "MyText"
      )
    ])
  end

  it "renders a list of milestones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
