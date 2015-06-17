json.array!(@requi_questions) do |requi_question|
  json.extract! requi_question, :id, :requisition_id, :question_id
  json.url requi_question_url(requi_question, format: :json)
end
