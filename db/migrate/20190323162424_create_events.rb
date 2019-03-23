class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :company, index: true, null: false
      t.string     :name
      t.datetime   :start_at
      t.datetime   :end_at
      t.string     :address
      t.string     :image_url
      t.timestamps
    end
  end
end
