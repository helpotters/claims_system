class CreateMunicipalities < ActiveRecord::Migration[7.2]
  def change
    create_table :municipalities do |t|
      t.belongs_to :account, null: false, foreign_key: true
      t.string :name
      t.boolean :is_active

      t.timestamps
    end
  end
end
