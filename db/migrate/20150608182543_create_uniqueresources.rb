class CreateUniqueresources < ActiveRecord::Migration
  def change
    create_table :uniqueresources do |t|
      t.boolean :broken
      t.boolean :lost
      t.integer :rating
      t.string :learningunit_id
      t.string :mastertoy_id

      t.timestamps

    end
  end
end
