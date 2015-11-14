class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :domain
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
