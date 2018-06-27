class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @post = Post.new(post_params)
      if @post.valid?
        @post.save
        redirect_to post_path(@post)
      else
        render :new
      end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
