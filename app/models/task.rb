class Task < ApplicationRecord
    enum priority: [:low, :medium, :high]

    validate :due_date_after_created_at

    def due_date_after_created_at
        if due_date.present? && due_date <= created_at
            errors.add(:due_date, " must be at least one day later than the one created date.")
        end
    end
    
    # Adicione esta função para calcular a diferença em dias entre created_at e due_date
    def days_until_due
        if due_date.present?
            (due_date.to_date - created_at.to_date).to_i + 1
        else
            0  # ou outra lógica, dependendo do seu caso
        end
    end
    
    # Função para calcular quantos dias faltam até o due_date
    def days_until_due_date
        if due_date.present?
            (due_date.to_date - Date.today).to_i
        else
            0  # ou outra lógica, dependendo do seu caso
        end
    end

    def percentage_days_remaining
        total_days = days_until_due
        remaining_days = days_until_due_date
        if total_days > 0
            completion_percentage = (remaining_days.to_f / total_days.to_f) * 100
            completion_percentage.round(2)  # rounding to two decimal places
        else
            0  # handle the case where total_days is 0 to avoid division by zero
        end
    end
end
