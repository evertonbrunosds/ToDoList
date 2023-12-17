module TasksHelper

    def count_tasks_by_priority_and_status(priority, completion, category_id)
      return Task.where(priority: priority, completion: completion, category_id: category_id).count
    end

    def month_day_comma_year(datetime)
      datetime.strftime('%d/%m/%Y')
    end

    def progressbar_type(task)
      if task.completion
        return 'bg-secondary'
      end
      percentage = task.percentage_days_remaining.round(2)
      if  percentage <= 33.33
        return 'bg-danger'
      end
      if  33.33 < percentage && percentage <= 66.66
        return 'bg-warning'
      end
      if  66.66 < percentage
        return 'bg-success'
      end
      return ''
    end

    def completion_due_date_type(task)
      if task.completion
        return 'bg-secondary'
      else
        return 'bg-danger'
      end
    end

    def count_completed_tasks(tasks)
      tasks.count { |task| task.completion }
    end

    def count_incomplete_tasks(tasks)
      tasks.count { |task| !task.completion }
    end


end