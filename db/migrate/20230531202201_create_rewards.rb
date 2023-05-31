class CreateRewards < ActiveRecord::Migration[7.0]
  def change
    create_table :rewards do |t|
      t.integer :project_id
      t.text :description
      t.integer :amount
      t.integer :limit
      t.string :delivery_date

      t.timestamps
    end
  end
end
