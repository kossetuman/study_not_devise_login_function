class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to tasks_path
    end
  end  

  def task_params
    params.require(:task).permit(:title)
  end
end
