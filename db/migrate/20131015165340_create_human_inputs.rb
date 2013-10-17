class CreateHumanInputs < ActiveRecord::Migration
  def change
    create_table :human_inputs do |t|
      t.string :image_name
      t.integer :crop_correctness

      t.timestamps
    end
  end
end
