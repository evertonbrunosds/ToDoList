class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.date :due_date, null: false
      t.boolean :completion, null: false, default: false
      t.integer :priority, null: false

      t.timestamps
    end
  end
end
