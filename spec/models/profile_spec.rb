require 'spec_helper'

describe Profile do
  
  let(:user) { FactoryGirl.create(:user) }
  before do
    # This code is wrong!
    @profile = Profile.new(content: "Lorem ipsum", user_id: user.id)
  end

  subject { @profile }

  it { should respond_to(:born_on) }
  it { should respond_to(:location) }
  it { should respond_to(:gender) }
  it { should respond_to(:about) }
  it { should respond_to(:user_id) }
  
end
