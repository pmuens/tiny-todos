class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      t.references :todo

      t.timestamps
    end
    add_index :comments, :todo_id
  end
end
