class CreateToDoLists < ActiveRecord::Migration[5.2]
  def change
    create_table(:to_do_lists) do |t|
      t.integer   :user_id
      t.integer   :category_id
      t.string    :note
      t.string    :location
      t.boolean   :completed?
    end 
  end
end
