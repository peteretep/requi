class Answer < ActiveRecord::Migration
  def change
    drop_table :answers
    create_table :answers do |t|

      t.references :requisition, index: true
      t.references :question, index: true
      t.string :text
      t.timestamps
    end
  end
end
