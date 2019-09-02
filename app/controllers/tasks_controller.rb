class TasksController < ApplicationController
  def index
    @task = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to action: :index
  end

  def destroy
    @task = Task.find(params[:id])
    Task.delete(@task)
    redirect_to action: :index
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
