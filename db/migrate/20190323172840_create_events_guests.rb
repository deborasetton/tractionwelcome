class CreateEventsGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :events_guests do |t|
      t.references :event, index: true, null: false
      t.references :guest, index: true, null: false
      t.timestamps
    end
  end
end
