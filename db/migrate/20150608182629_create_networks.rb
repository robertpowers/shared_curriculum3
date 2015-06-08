class CreateNetworks < ActiveRecord::Migration
  def change
    create_table :networks do |t|
      t.string :name
      t.text :location
      t.text :user_id

      t.timestamps

    end
  end
end
