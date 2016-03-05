class CreateConnects < ActiveRecord::Migration
  def change
    create_table :connects do |t|
      t.references :junior, index: true, foreign_key: true
      t.references :company_profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
