class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.string :body

      t.timestamps null: false
    end
  end
end
