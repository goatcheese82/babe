class CreateGuesses < ActiveRecord::Migration[5.2]
  def change
    create_table :guesses do |t|

      t.string :name
      t.string :answer

      t.timestamps
    end
  end
end
