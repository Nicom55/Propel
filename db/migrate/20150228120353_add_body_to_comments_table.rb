class AddBodyToCommentsTable < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.string :body
    end
  end
end
