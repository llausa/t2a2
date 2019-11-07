class DropTableAdvices < ActiveRecord::Migration[5.2]
  def change
    drop_table :advices
  end
end
