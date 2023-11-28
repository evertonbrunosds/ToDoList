module CategoriesHelper

    def count_completed_tasks_in_category(category)
        return category.tasks.where(completion: true).count
    end
    
    def count_incomplete_tasks_in_category(category)
        return category.tasks.where(completion: false).count
    end

end
