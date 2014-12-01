require 'spec_helper'

describe "milestones/edit" do
  before(:each) do
    @milestone = assign(:milestone, stub_model(Milestone,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders the edit milestone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => milestones_path(@milestone), :method => "post" do
      assert_select "input#milestone_title", :name => "milestone[title]"
      assert_select "textarea#milestone_body", :name => "milestone[body]"
    end
  end
end
