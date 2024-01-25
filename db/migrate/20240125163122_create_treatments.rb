class CreateTreatments < ActiveRecord::Migration[7.1]
  def change
    create_table :treatments do |t|
      t.string :name
      t.string :translation
      t.boolean :state
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
