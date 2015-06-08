class CreateLearningunits < ActiveRecord::Migration
  def change
    create_table :learningunits do |t|
      t.string :theme_id
      t.string :network_id

      t.timestamps

    end
  end
end
