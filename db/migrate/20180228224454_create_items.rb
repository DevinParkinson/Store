class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :price
      t.string :name
      t.boolean :available
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
