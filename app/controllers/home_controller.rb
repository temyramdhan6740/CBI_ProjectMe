class HomeController < ApplicationController
    def index
        @var = 'index'
        @table = CbiBlog.all
    end
 
    def create
        @var = "create"
        @new = CbiBlog.new
    end

    def create_prog
        
    end
 
    def update
        
    end
 
    def show
        
    end
 
    def destroy
        
    end
 
    private
 
    def find_blog
        Blog.find(params[:id])
    end
 end
 