class AddSiretToArtisan < ActiveRecord::Migration[6.1]
  def change
    add_column :artisans, :siret, :string
  end
end
