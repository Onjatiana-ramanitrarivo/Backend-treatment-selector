class CreateTreatmentLines < ActiveRecord::Migration[7.1]
  def change
    create_table :treatment_lines do |t|
      t.string :date
      t.string :patientName
      t.string :state
      t.references :treatment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
