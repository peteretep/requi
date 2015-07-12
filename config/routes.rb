# == Route Map
#
#            Prefix Verb   URI Pattern                       Controller#Action
#     requi_answers GET    /requi_answers(.:format)          requi_answers#index
#                   POST   /requi_answers(.:format)          requi_answers#create
#  new_requi_answer GET    /requi_answers/new(.:format)      requi_answers#new
# edit_requi_answer GET    /requi_answers/:id/edit(.:format) requi_answers#edit
#      requi_answer GET    /requi_answers/:id(.:format)      requi_answers#show
#                   PATCH  /requi_answers/:id(.:format)      requi_answers#update
#                   PUT    /requi_answers/:id(.:format)      requi_answers#update
#                   DELETE /requi_answers/:id(.:format)      requi_answers#destroy
#      requisitions GET    /requisitions(.:format)           requisitions#index
#                   POST   /requisitions(.:format)           requisitions#create
#   new_requisition GET    /requisitions/new(.:format)       requisitions#new
#  edit_requisition GET    /requisitions/:id/edit(.:format)  requisitions#edit
#       requisition GET    /requisitions/:id(.:format)       requisitions#show
#                   PATCH  /requisitions/:id(.:format)       requisitions#update
#                   PUT    /requisitions/:id(.:format)       requisitions#update
#                   DELETE /requisitions/:id(.:format)       requisitions#destroy
#         questions GET    /questions(.:format)              questions#index
#                   POST   /questions(.:format)              questions#create
#      new_question GET    /questions/new(.:format)          questions#new
#     edit_question GET    /questions/:id/edit(.:format)     questions#edit
#          question GET    /questions/:id(.:format)          questions#show
#                   PATCH  /questions/:id(.:format)          questions#update
#                   PUT    /questions/:id(.:format)          questions#update
#                   DELETE /questions/:id(.:format)          questions#destroy
#  select_questions GET    /select_questions/:id(.:format)   select_questions#index
#     set_questions POST   /select_questions/:id(.:format)   select_questions#set
#  answer_questions GET    /answer_questions/:id(.:format)   answer_questions#index
#      save_answers POST   /answer_questions/:id(.:format)   answer_questions#save
#

Rails.application.routes.draw do
  resources :requisitions
  resources :questions

  get 'select_questions/:id', to: 'select_questions#index', as: 'select_questions'
  post 'select_questions/:id', to: 'select_questions#set', as: 'set_questions'

  get 'answer_questions/:id', to: 'answer_questions#index', as: 'answer_questions'
  post 'answer_questions/:id', to: 'answer_questions#save', as: 'save_answers'
end
