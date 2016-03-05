class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.references :junior_profile, index: true, foreign_key: true
      t.references :company_profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
