class CreateQuery < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :followers
      t.timestamps
    end
  end
end
