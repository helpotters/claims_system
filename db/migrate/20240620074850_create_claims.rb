class CreateClaims < ActiveRecord::Migration[7.2]
  def change
    create_table :claims do |t|
      t.references :municipality, null: false, foreign_key: true
      t.string :status
      t.string :claim_number
      t.text :claim_description

      t.timestamps
    end
  end
end
