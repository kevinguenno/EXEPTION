class CreateCastles < ActiveRecord::Migration[7.0]
  def change
    create_table :castles do |t|
      t.string :title
      t.string :description
      t.string :location
      t.integer :price
      t.integer :capacity
      t.string :photo
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
