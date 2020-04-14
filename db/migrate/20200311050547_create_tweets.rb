class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :title, null: false
      t.string :text, null: false
      t.string :image, null: false
      t.timestamps
    end
  end
end
