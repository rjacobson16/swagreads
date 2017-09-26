class CreateShelvings < ActiveRecord::Migration[5.1]
  def change
    create_table :shelvings do |t|
      t.integer :book_id
      t.integer :bookshelf_id

      t.timestamps
    end
    add_index(:shelvings, :book_id)
    add_index(:shelvings, :bookshelf_id)
  end
end
