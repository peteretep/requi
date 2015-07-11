class RequiAnswer < ActiveRecord::Migration
  def change
    drop_table :requi_answers
    create_table :requi_answers do |t|
      t.references :requisition, index: true
      t.references :answer, index: true

      t.timestamps
    end
  end
end
