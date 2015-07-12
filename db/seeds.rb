Answer.create!([
  {requisition_id: 1, question_id: 1, text: ""},
  {requisition_id: 1, question_id: 2, text: ""},
  {requisition_id: 1, question_id: 3, text: ""},
  {requisition_id: 1, question_id: 5, text: ""},
  {requisition_id: 1, question_id: 6, text: ""},
  {requisition_id: 1, question_id: 4, text: ""}
])
Question.create!([
  {text: "If any fixtures fittings or chattels included in the sale are the subject of any lease, rental, hire purchase agreement or chattel mortgage furnish now the agree- ment and on closing prove payment to date or (as the case may be) discharge thereof."},
  {text: "Which of the boundaries belong to the property and which are party."},
  {text: "Furnish now any agreements as to repair maintenance or otherwise of boundaries"},
  {text: "Are there are disputes with any adjoining owner in relation to boundaries"},
  {text: "Is the property registered under HomeBond, Premier, or alternative policy/scheme."},
  {text: "If so, and if still in force, furnish now guarantee certificate/final notice."}
])
RequiAnswer.create!([
  {requisition_id: 1, answer_id: 1}
])
RequiQuestion.create!([
  {requisition_id: 1, question_id: 1},
  {requisition_id: 1, question_id: 2},
  {requisition_id: 1, question_id: 3},
  {requisition_id: 1, question_id: 4},
  {requisition_id: 1, question_id: 5},
  {requisition_id: 1, question_id: 6}
])
Requisition.create!([
  {vendor: "asdf", purchaser: "sdaf", property_type: "house"}
])
