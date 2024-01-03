class TodosController < ApplicationController
  def index
    @todos = Todo.all
    puts @todo
    return @todos
  end

  def new
    @todo = Todo.create
  end

  def create
    @Todo = Todo.create(todo_params)
    if @todo.save
      redirect_to todo_path
    else
      render :new
    end
  end

  def destroy(id)
    @todo = Todo.destroy(id)
    return @todo
  end

  private

  def todo_params
    params.permit(:task, :complete)
  end
end
