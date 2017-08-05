class BlogController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new
    
    if @blog.save
      flash[:notice] = "Blog post was saved."
      redirect_to blogs_path
    else
      flash.now[:alert] = "Blog wasn't saved.  Please try again"
      render :new
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end
  
  def update
    @blog = Blog.find(params[:id])
    
    if @blog.update_attributes(blog_params)
      flash[:notice] = "Your blog post was updated."
      redirect_to blogs_path
    else
      flash.now[:alert] = "Blog wasn't saved.  Please try again."
      render :new
    end
  end
  
  def destroy
    @blog = Blog.find(params[:id])
    
    if @blog.destroy
      flash[:notice] = "Your #{@blog.title} was deleted."
      redirect_to blogs_path
    else
      flash[:alert] = "The was an error deleting #{@blog.title}"
      render :new
    end
  end
  
  private
  
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
  
end
