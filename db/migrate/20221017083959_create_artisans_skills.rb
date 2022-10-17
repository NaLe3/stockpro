class CreateArtisansSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :artisans_skills, id: false do |t|
      t.integer :artisan_id
      t.integer :skill_id

      t.timestamps
    end

    add_index :artisans_skills, :artisan_id
    add_index :artisans_skills, :skill_id
  end
end
