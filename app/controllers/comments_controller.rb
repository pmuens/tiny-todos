class CommentsController < ApplicationController
  def create
    @todo = Todo.find(params[:todo_id])
    @comment = @todo.comments.create(params[:comment])
    redirect_to todo_path(@todo)
  end
  
  def destroy
    @todo = Todo.find(params[:todo_id])
    @comment = @todo.comments.find(params[:id])
    @comment.destroy
    redirect_to comment_path(@todo)
  end
end
