class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :description

      t.timestamps null: false
    end
  end
end
