class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|

      t.timestamps null: false
    end
  end
end
