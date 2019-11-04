class CreateAdviceReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :advice_replies do |t|
      t.references :user, foreign_key: true, null: false
      t.references :advice_question, foreign_key: true, null: false
      t.text :title
      t.text :desc

      t.timestamps
    end
  end
end
