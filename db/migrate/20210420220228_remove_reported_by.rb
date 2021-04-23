class RemoveReportedBy < ActiveRecord::Migration[6.1]
  def change
    remove_column :pet_reports, :reportedBy, :string
    add_column :pet_reports, :user_id, :integer
  end
end
