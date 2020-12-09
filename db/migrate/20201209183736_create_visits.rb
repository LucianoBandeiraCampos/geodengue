class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :state
      t.integer :focus_quantity
      t.boolean :eliminated
      t.boolean :dengue_last_3m
      t.string :observations
      t.references :user, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
