class CommentsController < ApplicationController
  
  def new
    @commentable = find_commentable
  end

  def create
    @commentable = find_commentable
    @comment = @commentable.comments.build(params[:comment])
    
    if @comment.save
      redirect_to get_master
    else
      render :action => 'new'
    end
  end
  
  protected
  
  def find_commentable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end
  
  def get_master
    @parent = @comment.commentable
    if @parent.respond_to?('commentable_type')
      @comment = @parent
      get_master
    else
      return @parent
    end
  end
  
end
