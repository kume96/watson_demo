class CreateObjectRecognitions < ActiveRecord::Migration
  def change
    create_table :object_recognitions do |t|

      t.integer :start_time
      t.string :data
      t.timestamps null: false
    end
  end
end
