class CreateRequiQuestions < ActiveRecord::Migration
  def change
    create_table :requi_questions do |t|
      t.references :requisition, index: true
      t.references :question, index: true

      t.timestamps
    end
  end
end
