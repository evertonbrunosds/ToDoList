class TasksController < ApplicationController
  before_action :set_task, only: %i[ edit update destroy ]
  before_action :set_category, except: [:edit, :update, :destroy]

  # GET /tasks or /tasks.json
  def index
    @tasks = @category.tasks.sort_by { |task| task.percentage_days_remaining }
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks or /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to tasks_url }
        format.json { render :tasks_url, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
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
    set_category # Certifique-se de definir @category antes de redirecionar
    redirect_to category_tasks_path(@category)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    def set_category
      @category = Category.find(params[:category_id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :description, :due_date, :completion, :priority, :category_id)
    end
end
