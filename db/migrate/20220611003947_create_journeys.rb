class CreateJourneys < ActiveRecord::Migration[6.1]
  def change
    create_table :journeys do |t|
      t.integer :people
      t.references :car, null: false, foreign_key: true

      t.timestamps
    end
  end
end
