class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string  :email_confirm_token
      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
