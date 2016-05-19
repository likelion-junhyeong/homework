class HomeController < ApplicationController
    
    def index
        @posts = Post.all.reverse
    end
    
    def write
        post = Post.new
        post.content = params[:content]
        post.save
        redirect_to "/home/index"
    end    
end
