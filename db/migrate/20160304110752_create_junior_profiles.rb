class CreateJuniorProfiles < ActiveRecord::Migration
  def change
    create_table :junior_profiles do |t|
      t.string :name
      t.string :city
      t.string :picture
      t.boolean :ruby, default: false
      t.boolean :rails, default: false
      t.boolean :javascript, default: false
      t.boolean :node, default: false
      t.boolean :react, default: false
      t.boolean :jquery, default: false
      t.boolean :php, default: false
      t.boolean :java, default: false
      t.boolean :net, default: false
      t.boolean :cplusplus, default: false
      t.boolean :coffeescript, default: false
      t.boolean :csharp, default: false

      t.timestamps null: false
    end
  end
end
