class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.references :user, foreign_key: true
      t.text :title
      t.text :desc

      t.timestamps
    end
  end
end
