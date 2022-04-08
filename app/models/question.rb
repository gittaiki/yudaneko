class Question < ApplicationRecord
  belongs_to :trouble
  belongs_to :result

  with_options presence: true do
    validates :content
    validates :point
  end

  def self.first_question(trouble)
    where(trouble_id: trouble.id).sample
  end
end
