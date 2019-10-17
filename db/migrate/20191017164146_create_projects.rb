class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :mission
      t.date :target
      t.string :requirements
      t.string :status

      t.timestamps
    end
  end
end
