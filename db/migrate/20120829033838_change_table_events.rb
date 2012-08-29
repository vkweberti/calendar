class ChangeTableEvents < ActiveRecord::Migration
  def change
    remove_column :events, :date
    add_column :events, :start_at, :datetime
    add_column :events, :end_at, :datetime
  end
end
