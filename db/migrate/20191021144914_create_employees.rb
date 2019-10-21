class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :task
      t.string :task_status

      t.timestamps
    end
  end
end
