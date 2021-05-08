class AmendUserIdFrom < ActiveRecord::Migration[6.1]
  def change
    remove_column :messages, :user_id_from, :integer
    remove_column :messages, :user_id_to, :integer
    add_column :messages, :user_id, :integer
  end
end
