class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.text :description
      t.string :url_name
      t.boolean :hidden
      t.string :user_id

      t.timestamps
    end
  end
end
