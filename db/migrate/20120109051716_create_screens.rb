class CreateScreens < ActiveRecord::Migration
  def self.up
    create_table :screens do |t|
      t.string :title
      t.text :description
      t.string :file
      t.references :attachable

      t.timestamps
    end
  end

  def self.down
    drop_table :screens
  end
end
