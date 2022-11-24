class CreateTodosTable < ActiveRecord::Migration[6.1]
  def change
    create_table :todos do |t|
      t.string :name
      t.string :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
