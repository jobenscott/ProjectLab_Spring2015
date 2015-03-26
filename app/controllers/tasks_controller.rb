class TasksController < ApplicationController

  def new
    @task = @project.tasks.build
  end

  def create
    @task = @project.tasks.build(task_params)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end
end
