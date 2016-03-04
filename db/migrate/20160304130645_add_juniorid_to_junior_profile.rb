class AddJunioridToJuniorProfile < ActiveRecord::Migration
  def change
    add_reference :junior_profiles, :junior, index: true, foreign_key: true
  end
end
