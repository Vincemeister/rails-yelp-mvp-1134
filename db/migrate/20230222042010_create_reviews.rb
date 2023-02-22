class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :content
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end

    add_foreign_key :reviews, :restaurants, on_delete: :cascade
  end
end
