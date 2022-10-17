class CreateArtisans < ActiveRecord::Migration[6.1]
  def change
    create_table :artisans do |t|
      t.string   :name
      t.string   :first_name
      t.float    :tjm,     default: 0.0
      t.text     :desc

      t.timestamps
    end
  end
end
