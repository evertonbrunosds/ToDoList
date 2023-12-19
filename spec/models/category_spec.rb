# spec/models/category_spec.rb

require 'rails_helper'

RSpec.describe Category, type: :model do
  it "is valid with valid attributes" do
    category = build(:category)
    expect(category).to be_valid
  end

  it "is not valid without a name" do
    category = build(:category, name: nil)
    expect(category).to_not be_valid
  end

  # Add more tests as needed
end
