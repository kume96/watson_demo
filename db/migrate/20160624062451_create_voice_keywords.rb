class CreateVoiceKeywords < ActiveRecord::Migration
  def change
    create_table :voice_keywords do |t|
      t.string :time
      t.string :keyword

      t.timestamps null: false
    end
  end
end
