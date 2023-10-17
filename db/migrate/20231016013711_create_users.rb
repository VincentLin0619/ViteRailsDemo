class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nick_name, null: false, unique: true
      t.string :password_digest
      t.string :email, null: false, unique: true
      t.integer :role, null: false, default: 0

      t.timestamps
    end
  end
end
