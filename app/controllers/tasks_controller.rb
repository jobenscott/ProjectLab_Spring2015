class TasksController < ApplicationController

  def new
    @task = @project.tasks.build
  end

  def create
    @task = @project.tasks.build(task_params)

    if @task.save
      redirect_to @project
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])

    if @task.user != current_user
      redirect_to @project, notice: "This isn't your task."
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to @project
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.user == current_user
      @task.destroy
      redirect_to @project
    else
      redirect_to @project, notice: "This isn't your task."
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:description, :due_date, :project_id)
  end
end
