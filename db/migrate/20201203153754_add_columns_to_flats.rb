class AddColumnsToFlats < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :bedrooms, :integer
    add_column :flats, :guests, :integer
    add_column :flats, :bathrooms, :integer
  end
end
