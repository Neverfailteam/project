class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy] 
    def index
        @posts = Post.all.order("created_at DESC")
    end
    def show
    end
    def new
        @post = current_user.posts.build
    end
    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            redirect_to root_path
        else
            render 'new'
        end
    end
    def edit
        if current_user.id == @post.user_id
            render 'edit'
        else 
            flash.now[:notice] = "You can't edit this post." 
        end
    end
    def update
        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
    end
    def destroy
        if current_user.id == @post.user_id
            @post.destroy
            redirect_to root_path
        else 
            flash.now[:notice] = "You can't edit this post." 
            redirect_to root_path
        end
    end
    private
    def post_params
        params.require(:post).permit(:title, :content)
    end
    private
    def find_post
        @post = Post.find(params[:id])
    end
    
end
