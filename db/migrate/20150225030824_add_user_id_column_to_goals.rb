class AddUserIdColumnToGoals < ActiveRecord::Migration
  def change
    change_table :goals do |t|
      t.integer :user_id, :index => true
    end
  end
end
