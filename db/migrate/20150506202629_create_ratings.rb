class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :user, index: true
      t.references :comment, index: true
      t.integer :vote

      t.timestamps
    end
  end
end
