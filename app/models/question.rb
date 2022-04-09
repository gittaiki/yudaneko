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

  def self.next_question(trouble, question_ids)
    where(trouble_id: trouble.id).where.not(id: question_ids).sample
  end
end
