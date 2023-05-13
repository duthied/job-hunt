class ChangeLogentriesFieldType < ActiveRecord::Migration[7.0]
  def change
    rename_column :logentries, :type, :entry_type
  end
end
