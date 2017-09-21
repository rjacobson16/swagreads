class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :img_url
      t.text :description

      t.timestamps
    end
    add_index(:books, :title, unique: true)
  end
end
