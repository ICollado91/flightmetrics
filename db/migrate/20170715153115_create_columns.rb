class CreateColumns < ActiveRecord::Migration[5.0]
  def change
    create_table :columns do |t|
      t.string :header
      t.references :workspace, foreign_key: true

      t.timestamps
    end
  end
end
