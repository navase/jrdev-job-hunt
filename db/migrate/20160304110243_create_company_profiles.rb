class CreateCompanyProfiles < ActiveRecord::Migration
  def change
    create_table :company_profiles do |t|
      t.string :name
      t.string :email
      t.text :description
      t.string :size
      t.string :salary_indication
      t.string :jr_sr_ratio

      t.timestamps null: false
    end
  end
end
