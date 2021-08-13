class HomeController < ApplicationController
    def index
        @var = 'index'
    end
 
    def create
        @var = "create"
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
 