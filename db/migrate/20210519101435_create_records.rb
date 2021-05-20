class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
    add_index :records, :user_id
  end
end
