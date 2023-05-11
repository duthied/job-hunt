class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :title
      t.string :status
      t.text :notes
      t.string :url

      t.timestamps
    end
  end
end
