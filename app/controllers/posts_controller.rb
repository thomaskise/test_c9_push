class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
        
    end
    
    def new 
        
    end
    
    def create
        #render plain: params[:post].inspect
        @post = Post.new(post_parms)
        
        @post.save
        redirect_to @post
    end
    
    private def post_parms
        params.require(:post).permit(:title, :body)
    end
end
