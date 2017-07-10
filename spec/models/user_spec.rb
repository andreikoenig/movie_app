require 'rails_helper'

RSpec.describe User, type: :model do


    it { should validate_presence_of(:first_name) }
    
    it "user cannot have birthday later than today" do
      user = FactoryGirl.create(:user) #birthday: Date.new(2050,5,1))
      expect(user).to be_valid
    end
    #  post.author = "Foo"
    #  expect(post).to be_valid
end
