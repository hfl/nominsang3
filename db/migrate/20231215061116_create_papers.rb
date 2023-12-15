class CreatePapers < ActiveRecord::Migration[7.1]
  def change
    create_table :papers do |t|
      t.references :issue, null: false, foreign_key: true
      t.string :title
      t.references :author, null: false, foreign_key: true
      t.text :abstract

      t.timestamps
    end
  end
end
