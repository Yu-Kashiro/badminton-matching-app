class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false
      t.string :nickname
      t.integer :gender
      t.date :birthday
      t.integer :years_of_experience
      t.integer :level
      t.integer :area
      t.text :introduction

      t.timestamps
    end
  end
end
