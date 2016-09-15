class CreateFivelets < ActiveRecord::Migration[5.0]
  def change
    create_table :fivelets do |t|
      t.string :title
      t.string :author
      t.string :suggestion_1
      t.string :suggestion_2
      t.string :suggestion_3
      t.string :suggestion4
      t.string :suggestion5

      t.timestamps
    end
  end
end
