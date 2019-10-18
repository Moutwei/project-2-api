class AddUserToLeaders < ActiveRecord::Migration[5.2]
  def change
    add_reference :leaders, :user, foreign_key: true
  end
end
