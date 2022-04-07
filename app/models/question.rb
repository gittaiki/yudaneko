class Question < ApplicationRecord
  belongs_to :trouble
  belongs_to :result

  with_options presence: true do
    validates :content
    validates :point
  end
end
