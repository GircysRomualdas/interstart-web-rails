class CreateReplies < ActiveRecord::Migration[7.1]
  def change
    create_table :replies do |t|
      t.text :message, null: false
      t.belongs_to :comment

      t.timestamps
    end
  end
end
