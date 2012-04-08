class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.references :user
      t.date :date
      t.integer :steps

      t.timestamps
    end
    add_index :steps, :user_id
  end
end
