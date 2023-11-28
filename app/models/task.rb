class Task < ApplicationRecord
    belongs_to :category

    enum priority: [:low, :medium, :high]

    validates :title, presence: true
    validate :due_date_after_created_at
    validates :priority, presence: true

    def due_date_after_created_at
        if due_date.present? && created_at.present?
            if days_until_due < 0
                errors.add(:due_date, "must be at least one day later than the one created date.")
            end
        elsif due_date.present?
            if days_until_due_date < 0
                errors.add(:due_date, "must be at least one day later than a current date.")
            end
        end
    end
    
    # Adicione esta função para calcular a diferença em dias entre created_at e due_date
    def days_until_due
        if due_date.present?
            (Date.parse(due_date.strftime('%Y-%m-%d')) - Date.parse(created_at.strftime('%Y-%m-%d'))).to_i
        else
            0  # ou outra lógica, dependendo do seu caso
        end
    end
    
    # Função para calcular quantos dias faltam até o due_date
    def days_until_due_date
        if due_date.present?
            (Date.parse(due_date.strftime('%Y-%m-%d')) - Date.parse(Date.today.strftime('%Y-%m-%d'))).to_i
        else
            0  # ou outra lógica, dependendo do seu caso
        end
    end

    def percentage_days_remaining
        total_days = days_until_due
        remaining_days = days_until_due_date
        if total_days > 0
            completion_percentage = (remaining_days.to_f / total_days.to_f) * 100
            return completion_percentage.round(2) # rounding to two decimal places
        else
            0  # handle the case where total_days is 0 to avoid division by zero
        end
    end

    private

end
