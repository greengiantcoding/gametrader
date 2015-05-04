class CreatePrivileges < ActiveRecord::Migration
  def change
    create_table :privileges do |t|
      t.integer :user_id
      t.string :access

      t.timestamps
    end
  end
end
