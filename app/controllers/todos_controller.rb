  class TodosController < ApplicationController


  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params)

    redirect_to todos_path
  end

  def edit
     @todo = Todo.find(params[:id])
  end

  def update
    @todo.update(todo_params)

    redirect_to todo_path(@todo)
  end

  def destroy
    @todo.destroy

    redirect_to todos_path
  end

  private

    def todo_params
      params.require(:todo).permit(:name, :boolean)
    end

  #   def set_restaurant
  #     @restaurant = Restaurant.find(params[:id])
  #   end


end
