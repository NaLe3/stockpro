class CreateMissions < ActiveRecord::Migration[6.1]
  def change
    create_table :missions do |t|
      t.datetime   :start_at
      t.datetime   :end_at
      t.float      :price,     default: 0.0
      t.text       :desc
      t.references :artisan, foreign_key: true

      t.timestamps
    end
  end
end
