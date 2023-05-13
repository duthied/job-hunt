class ChangeActionsToLogentries < ActiveRecord::Migration[7.0]
  def change

    change_table :actions do |t|
      t.remove_references :role
    end

    rename_table :actions, :logentries

    change_table :logentries do |t|
      t.belongs_to :role
    end
    
  end
end
