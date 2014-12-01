require 'spec_helper'

describe "profiles/edit" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :Gender => "MyString",
      :Location => "MyString",
      :About => "MyText"
    ))
  end

  it "renders the edit profile form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => profiles_path(@profile), :method => "post" do
      assert_select "input#profile_Gender", :name => "profile[Gender]"
      assert_select "input#profile_Location", :name => "profile[Location]"
      assert_select "textarea#profile_About", :name => "profile[About]"
    end
  end
end
