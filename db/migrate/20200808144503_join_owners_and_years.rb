class JoinOwnersAndYears < ActiveRecord::Migration[6.0]
  def change
    create_join_table :owners, :years do |t|
      t.index :owner_id
      t.index :year_id
    end
  end
end

