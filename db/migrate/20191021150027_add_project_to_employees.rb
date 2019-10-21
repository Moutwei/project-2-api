class AddProjectToEmployees < ActiveRecord::Migration[5.2]
  def change
    add_reference :employees, :project, foreign_key: true
  end
end
