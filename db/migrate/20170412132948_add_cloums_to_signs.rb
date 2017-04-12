class AddCloumsToSigns < ActiveRecord::Migration
  def change
    add_column :signs, :longitude, :decimal, null: false
    add_column :signs, :latitude, :decimal, null: false
    add_column :signs, :message, :string, null: false
    add_column :signs, :place, :string, null: false
    add_attachment :signs, :photo
    add_column :signs, :device_id, :integer, null: false
  end
end
