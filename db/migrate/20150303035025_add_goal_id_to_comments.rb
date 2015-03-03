class AddGoalIdToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.integer :goal_id, :index => true
    end
  end
end
