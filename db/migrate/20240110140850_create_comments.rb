class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.string :email, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
