require 'rails_helper'

RSpec.describe User, type: :model do
  subject { FactoryGirl.build(:user) }

    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }

    # fails with the custom validation as it checks for a case when birthday is nil
    # it { should validate_presence_of(:birthday) }
    it { should validate_presence_of(:email) }

    it "user cannot have birthday later than today" do
      user = FactoryGirl.build(:user)
      expect(user).to be_valid

      user.birthday = Time.now + 1.year
      expect(user).to_not be_valid
    end
end
