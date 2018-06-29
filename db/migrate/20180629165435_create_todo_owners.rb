class CreateTodoOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_owners do |t|
      t.integer :todo_id
      t.integer :owner_id
    end
  end
end
