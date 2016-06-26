class ChangeTime < ActiveRecord::Migration
  def up
    change_column :voice_categories, :end_time, :time
    change_column :voice_categories, :start_time, :time
  end

  #変更前の型
  def down
    change_column :voice_categories, :end_time, :time
    change_column :voice_categories, :start_time, :string
  end
end
