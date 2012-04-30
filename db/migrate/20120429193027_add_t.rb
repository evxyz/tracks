class AddT < ActiveRecord::Migration
  def change 
  add_column :tracks, :artist, :string
  end

  def down
  end
end
