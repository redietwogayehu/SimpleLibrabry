class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :isbn
      t.boolean :available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
