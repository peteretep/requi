class CreateRequisitions < ActiveRecord::Migration
  def change
    create_table :requisitions do |t|
      t.string :vendor
      t.string :purchaser

      t.timestamps
    end
  end
end
