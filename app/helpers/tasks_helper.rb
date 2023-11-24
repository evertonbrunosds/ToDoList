module TasksHelper

    def month_day_comma_year(datetime)
        datetime.strftime('%d/%m/%Y')
    end

    def progressbar_type(task)
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

end