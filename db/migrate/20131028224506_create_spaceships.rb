class CreateSpaceships < ActiveRecord::Migration
  def change
    create_table :spaceships do |t|
      t.string :name
      t.string :engine
      t.string :wings
      t.timestamp
    end
  end
end
