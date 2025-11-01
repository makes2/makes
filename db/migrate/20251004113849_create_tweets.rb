class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :title
      t.string :comment
      t.string :cosme

      t.timestamps
    end
  end
end
