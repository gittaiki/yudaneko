class Trouble < ApplicationRecord
  has_many :questions, dependent: :restrict_with_error

  validates :content, presence: true
end
