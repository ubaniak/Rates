class CreateChangeLogs < ActiveRecord::Migration
  def change
    create_table :change_logs do |t|
      t.date :date
      t.time :time
      t.string :column
      t.string :from
      t.string :to
      t.integer :admin_id
      t.string :supporting_document
      t.string :comment
      t.integer :account_id

      t.timestamps
    end
  end
end
