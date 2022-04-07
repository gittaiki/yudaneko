class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :content, null: false
      t.string :point, null: false
      t.references :trouble, foreign_key: true
      t.references :result, foreign_key: true

      t.timestamps
    end
  end
end
