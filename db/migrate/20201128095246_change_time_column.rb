class ChangeTimeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :interviews, :time, :start_time
  end
end
