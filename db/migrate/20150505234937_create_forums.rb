class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :game_title
      t.string :game_category
      t.text :topic_title
      t.text :topic_content
      t.references :user, index: true
      t.references :comment, index: true

      t.timestamps
    end
  end
end
