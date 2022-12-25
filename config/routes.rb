Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lists/new'
  get 'lists/edit'
  get 'top' => 'homes#top'
  post 'lists' => 'lists#create'   #ここを追記します
  get 'lists' => 'lists#index' # 一覧画面
  # .../lists/1 や .../lists/3 に該当する
  get 'lists/:id' => 'lists#show', as: 'list' # 詳細画面



end
