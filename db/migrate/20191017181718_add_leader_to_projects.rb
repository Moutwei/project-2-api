class AddLeaderToProjects < ActiveRecord::Migration[5.2]
  def change
    add_reference :projects, :leader, foreign_key: true
  end
end
