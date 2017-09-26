class CreateBookshelves < ActiveRecord::Migration[5.1]
  def change
    create_table :bookshelves do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
    add_index(:bookshelves, :name, unique: true)
    add_index(:bookshelves, :user_id)
  end
end
