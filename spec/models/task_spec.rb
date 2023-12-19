# spec/models/task_spec.rb

require 'rails_helper'

RSpec.describe Task, type: :model do
  it "is valid with valid attributes" do
    task = build(:task)
    expect(task).to be_valid
  end

  it "is not valid without a title" do
    task = build(:task, title: nil)
    expect(task).to_not be_valid
  end

  it "is not valid without a due_date" do
    task = build(:task, due_date: nil)
    expect(task).to_not be_valid
  end

  it "is not valid without a priority" do
    task = build(:task, priority: nil)
    expect(task).to_not be_valid
  end

  # Add more tests as needed
end
