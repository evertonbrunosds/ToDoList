# spec/controllers/tasks_controller_spec.rb

require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  let(:valid_attributes) {
    { title: 'Test Task', description: 'Test Description', due_date: Date.today, completion: false, priority: 'medium' }
  }

  let(:invalid_attributes) {
    { title: nil, description: 'Test Description', due_date: Date.today, completion: false, priority: 'medium' }
  }

  describe "GET #index" do
    it "returns a success response" do
      task = Task.create! valid_attributes
      get :index, params: {}
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      task = Task.create! valid_attributes
      get :show, params: { id: task.to_param }
      expect(response).to be_successful
    end
  end

  # Add more controller tests as needed
end
