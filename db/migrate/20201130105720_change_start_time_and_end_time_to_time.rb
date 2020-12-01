class ChangeStartTimeAndEndTimeToTime < ActiveRecord::Migration[6.0]
  def change
    change_column :interviews, :start_time, :time
    change_column :interviews, :end_time, :time
  end
end
