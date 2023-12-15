class CreateIssues < ActiveRecord::Migration[7.1]
  def change
    create_table :issues do |t|
      t.string :year
      t.string :volume
      t.string :number
      t.references :journal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
