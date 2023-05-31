class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :category_id
      t.string :title
      t.text :description
      t.integer :goal_amount
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
