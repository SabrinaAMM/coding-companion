class CreateInterviews < ActiveRecord::Migration[6.0]
  def change
    create_table :interviews do |t|
      t.datetime :time
      t.string :focus
      t.string :experience
      t.string :interview_language
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
