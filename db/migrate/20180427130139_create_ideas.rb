class CreateIdeas < ActiveRecord::Migration[5.2]
  def change
    create_table :ideas do |t|
      t.references :author, foreign_key: {to_table: :users}
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
