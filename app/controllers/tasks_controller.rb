class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_task, only: %i[ edit update destroy ]
  before_action :set_category, except: %i[edit update ]

  # GET /tasks or /tasks.json
  def index
    @tasks = @category.tasks.sort_by { |task| task.percentage_days_remaining }
  end

  # GET /tasks/new
  def new
    @task = @category.tasks.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    @task = @category.tasks.new(task_params)
    if @task.save
      redirect_to category_tasks_path(@task.category)
    else
      render :new
    end
  end

  # PATCH/PUT /tasks/1 or /tasks/1.json
  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to category_tasks_path(@task.category)
    else
      render :edit
    end
  end

  # DELETE /tasks/1 or /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to category_tasks_path(@category)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
      @currentCategory = Category.find(@task.category_id)
      authorize @currentCategory
    end

    def set_category
      @category = Category.find(params[:category_id])
      authorize @category
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :description, :due_date, :completion, :priority, :category_id)
    end
end
