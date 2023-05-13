class CreateActions < ActiveRecord::Migration[7.0]
  def change
    create_table :actions do |t|
      t.references :role, null: false, foreign_key: true
      t.text :body
      t.string :type

      t.timestamps
    end
  end
end
