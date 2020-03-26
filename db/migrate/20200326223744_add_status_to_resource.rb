class AddStatusToResource < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :status, :string, :default => 'unapproved'

    Resource.update_all status: 'approved'
  end
end
