class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end

    # 以下を追加
  def create
    # １.&2. データを受け取り新規登録するためのインスタンス作成
    @list = List.new(list_params)
    # 3. データをデータベースに保存するためのsaveメソッド実行
    # 4. トップ画面へリダイレクト×
    # redirect_to '/top' を削除して、以下コードに変更
    # 詳細画面へリダイレクト
    if @list.save
      redirect_to list_path(@list.id)
    else
      render :new
    end
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    list.update(list_params)
    redirect_to list_path(list.id)
  end

  def destroy
    list = List.find(params[:id]) #データ（レコード）を1件取得
    list.destroy #データ（レコード）を削除
    redirect_to '/lists' #投稿一覧画面はリダイレクト
  end

  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body, :image)
  end
end
