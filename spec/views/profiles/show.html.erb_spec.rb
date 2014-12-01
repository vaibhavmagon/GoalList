require 'spec_helper'

describe "profiles/show" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :Gender => "Gender",
      :Location => "Location",
      :About => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gender/)
    rendered.should match(/Location/)
    rendered.should match(/MyText/)
  end
end
