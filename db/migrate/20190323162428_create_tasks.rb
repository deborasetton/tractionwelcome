class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.references :event, index: true, null: false
      t.references :guest, index: true, null: false
      t.string     :description
      t.datetime   :start_at
      t.datetime   :end_at
      t.string     :location
      t.integer    :task_type
      t.timestamps
    end
  end
end
