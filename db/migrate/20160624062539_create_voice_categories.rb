class CreateVoiceCategories < ActiveRecord::Migration
  def change
    create_table :voice_categories do |t|
      t.string :start_time
      t.string :end_time
      t.string :category

      t.timestamps null: false
    end
  end
end
