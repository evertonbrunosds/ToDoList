# spec/migrations/add_category_to_task_migration_spec.rb

require 'rails_helper'
require 'rails/generators/test_case'
require 'generators/add_category_to_task/add_category_to_task_generator'

describe AddCategoryToTaskGenerator, type: :generator do
  let(:migration_name) { 'AddCategoryToTask' }

  context 'when the migration already exists' do
    before do
      allow(described_class).to receive(:migration_exists?).and_return(true)
    end

    it 'does not generate the migration file' do
      run_generator
      expect(destination).to_not have_file(migration_file_name)
    end

    it 'outputs a message about the existing migration' do
      expect(Rails.logger).to receive(:error).with(/#{migration_name} already exists/)
      run_generator
    end
  end

  context 'when the migration does not exist' do
    before do
      allow(described_class).to receive(:migration_exists?).and_return(false)
    end

    it 'generates the migration file' do
      run_generator
      expect(destination).to have_file(migration_file_name)
    end

    it 'outputs a message about generating the migration' do
      expect(Rails.logger).to receive(:info).with(/#{migration_name} migration created/)
      run_generator
    end
  end

  def migration_file_name
    "#{Rails.root}/db/migrate/#{Time.now.utc.strftime('%Y%m%d%H%M%S')}_#{migration_name.underscore}.rb"
  end
end
