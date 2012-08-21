class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.datetime :date
      t.integer :repeat

      t.timestamps
    end
  end
end
