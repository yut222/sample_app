Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lists/new'
  get '/top' => 'homes#top'
  post 'lists' => 'lists#create'   #ここを追記します
  get 'lists' => 'lists#index'
  # .../list/1 や .../list/3 に該当する
  get 'lists/:id' => 'lists#show' # 詳細画面を表示
  get 'lists/edit'


end
