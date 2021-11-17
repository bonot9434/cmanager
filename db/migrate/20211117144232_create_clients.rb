class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer "user_id"
      t.string "name"
      t.string "postal_code"
      t.string "address"
      t.string "telephone_number"
      t.string "email"
      t.text "introduction"
      t.integer "industry_id", default: 0

      t.timestamps
    end
  end
end
