class PostsController < ApplicationController
  def index  #indexアクションを定義しました
    @posts = Post.all  #すべてのレコードを@postに代入
  end 

  def new 
  end

  def create
    Post.create(content: params[:content])
    redirect_to "/posts"
  end

end
