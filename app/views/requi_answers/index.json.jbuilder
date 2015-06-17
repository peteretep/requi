json.array!(@requi_answers) do |requi_answer|
  json.extract! requi_answer, :id, :requisition_id, :requi_question_id, :question_id, :text
  json.url requi_answer_url(requi_answer, format: :json)
end
