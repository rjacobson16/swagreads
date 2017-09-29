class RemoveIndexFromBookshelves < ActiveRecord::Migration[5.1]
  def change
    remove_index :bookshelves, :name
  end
end
