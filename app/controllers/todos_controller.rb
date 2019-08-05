class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.where(email: current_email)
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todos_params.merge(email: current_email))
    if @todo.valid?
      redirect_to todos_path
    else
      render :new
    end
  end

  private

  def todos_params
    params.require(:todo).permit(:title)
  end

end
