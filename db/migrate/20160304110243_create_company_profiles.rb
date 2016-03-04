class CreateCompanyProfiles < ActiveRecord::Migration
  def change
    create_table :company_profiles do |t|
      t.string :name
      t.text :description
      t.string :size
      t.string :salary_indication
      t.string :jr_sr_ratio
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
