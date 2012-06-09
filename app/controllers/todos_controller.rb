class TodosController < ApplicationController
  http_basic_authenticate_with :name => "name", :password => "password", :only => :show
  
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def edit
    @todo = Todo.find(params[:id])
  end
  def create
    @todo = Todo.new(params[:todo])

    respond_to do |format|
      if @todo.save
        format.html { redirect_to @todo, notice: 'Todo was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  
  def update
    @todo = Todo.find(params[:id])

    respond_to do |format|
      if @todo.update_attributes(params[:todo])
        format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    respond_to do |format|
      format.html { redirect_to todos_url }
    end
  end
end
