class AddLikeableFieldsToLikes < ActiveRecord::Migration
  def change
    change_table :likes do |t|
      t.string :likeable_type
      t.integer :likeable_id
    end
  end
end
