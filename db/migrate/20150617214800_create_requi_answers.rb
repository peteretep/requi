class CreateRequiAnswers < ActiveRecord::Migration
  def change
    create_table :requi_answers do |t|
      t.references :requisition, index: true
      t.references :requi_question, index: true
      t.references :question, index: true
      t.string :text

      t.timestamps
    end
  end
end
