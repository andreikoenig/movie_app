require 'rails_helper'

RSpec.describe User, type: :model do

  describe 'validations' do
    subject { FactoryGirl.create(:user) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:birthday) }
    it { should validate_presence_of(:email) }
  end
  
  it "user cannot have birthday later than today" do
    user = FactoryGirl.build(:user)
    expect(user).to be_valid
    user.birthday = Time.now + 1.year
    expect(user).to_not be_valid
  end
end
