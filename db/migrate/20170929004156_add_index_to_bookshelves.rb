class AddIndexToBookshelves < ActiveRecord::Migration[5.1]
  def change
    add_index :bookshelves, :name
  end
end
