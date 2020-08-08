class CreateYears < ActiveRecord::Migration[6.0]
  def change
    create_table :years do |t|
      t.integer :year
      t.integer :year_id
      t.timestamps
    end
  end
end
