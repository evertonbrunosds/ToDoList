class Category < ApplicationRecord
    belongs_to :user
    has_many :tasks, dependent: :destroy
    validates :name, presence: true
    validates :description, presence: true

    scope :sorted, -> { order(:name) }

end
