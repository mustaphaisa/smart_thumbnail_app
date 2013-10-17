class CreateCropRegions < ActiveRecord::Migration
  def change
    create_table :crop_regions do |t|
      t.string :name
      t.integer :xcord
      t.integer :ycord
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
