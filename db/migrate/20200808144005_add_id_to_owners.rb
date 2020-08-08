class AddIdToOwners < ActiveRecord::Migration[6.0]
  def change
    add_column :owners, :owner_id, :integer
  end
end
