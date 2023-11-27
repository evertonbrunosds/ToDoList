module TasksHelper

    def month_day_comma_year(datetime)
        datetime.strftime('%d/%m/%Y')
    end

    def progressbar_type(task)
      if task.completion
        return 'bg-secondary'
      end
      percentage = task.percentage_days_remaining.round(2)
      if  0 < percentage && percentage <= 33.33
        return 'bg-danger'
      end
      if  33.33 < percentage && percentage <= 66.66
        return 'bg-warning'
      end
      if  66.66 < percentage && percentage <= 100
        return 'bg-success'
      end
      return ''
    end

    def priority_type(task)
      if task.completion
        return 'bg-secondary'
      end
      if  task.priority == 'high'
        return 'bg-danger'
      end
      if  task.priority == 'medium'
        return 'bg-warning'
      end
      if  task.priority == 'low'
        return 'bg-success'
      end
      return ''
    end

    def count_completed_tasks(tasks)
      tasks.count { |task| task.completion }
    end

    def count_incomplete_tasks(tasks)
      tasks.count { |task| !task.completion }
    end


end