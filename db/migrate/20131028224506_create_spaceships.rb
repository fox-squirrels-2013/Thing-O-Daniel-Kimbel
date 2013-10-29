class CreateSpaceships < ActiveRecord::Migration
  def change
    create_table :spaceships do |t|
      t.string :name
      t.integer :engines
      t.integer :lasers
      t.integer :shields
      t.timestamp
    end
  end
end
