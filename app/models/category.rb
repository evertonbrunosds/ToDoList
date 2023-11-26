class Category < ApplicationRecord
    has_many :tasks
    validates :name, presence: true
    validates :description, presence: true

    scope :sorted, -> { order(:name) }

end
