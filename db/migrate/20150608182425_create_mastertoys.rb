class CreateMastertoys < ActiveRecord::Migration
  def change
    create_table :mastertoys do |t|
      t.float :price
      t.string :thumbnailurl
      t.string :name

      t.timestamps

    end
  end
end
