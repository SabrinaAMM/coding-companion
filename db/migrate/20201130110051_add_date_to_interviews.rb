class AddDateToInterviews < ActiveRecord::Migration[6.0]
  def change
    add_column :interviews, :date, :date
  end
end
