class AddEndTimeToInterviews < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :end_time, :datetime
  end
end
