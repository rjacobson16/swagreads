class CreateReadStatuses < ActiveRecord::Migration[5.1]
  def change
    create_table :read_statuses do |t|
      t.integer :user_id
      t.integer :book_id
      t.string :status

      t.timestamps
    end
  end
end
