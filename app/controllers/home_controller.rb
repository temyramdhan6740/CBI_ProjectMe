class HomeController < ApplicationController
    def index
        @table = CbiBlog.all.order(updated_at: :desc)
    end
 
    def create
        @rand = SecureRandom.urlsafe_base64(nil, false)
        @new = CbiBlog.new
    end

    def create_prog
        @table = CbiBlog.new(form_params)
        if @table.save
            redirect_to root_path, notice: 'Create blog success'
        else
            render :create
        end
    end
 
    def update
        @id = CbiBlog.find(params[:blog_id])        
    end

    def update_prog
        @id = CbiBlog.find(params[:getId])
        if @id.update(form_params)
            redirect_to root_path, notice: 'Update blog success'
        else
            render :update
        end
    end
 
    def show
        
    end
 
    def destroy
        @table = CbiBlog.find(find_params)
        if @table.destroy
            redirect_to root_path, notice: 'Delete '+ find_params() +' success'
        else
            render :index
        end
    end
 
    private
    def find_blog
        Blog.find(params[:id])
    end

    private
    def form_params
        params.require(:cbi_blog).permit(:blog_id, :blog_title, :blog_desc)
    end

    private
    def find_params
        params[:getId]
    end
 end
 