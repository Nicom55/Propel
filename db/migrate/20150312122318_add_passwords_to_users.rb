class AddPasswordsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :password_hash
      t.string :password_salt
    end
  end
end
