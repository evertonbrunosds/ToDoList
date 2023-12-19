# spec/models/user_spec.rb

require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = build(:user)
    expect(user).to be_valid
  end

  it "is not valid without an email" do
    user = build(:user, email: nil)
    expect(user).to_not be_valid
  end

  it "is not valid without a password" do
    user = build(:user, password: nil)
    expect(user).to_not be_valid
  end

  it "is not valid with a duplicate email address" do
    create(:user, email: 'test@example.com')
    user = build(:user, email: 'test@example.com')
    expect(user).to_not be_valid
  end

  # Add more tests as needed
end
