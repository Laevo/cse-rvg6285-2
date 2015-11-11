class CreatePopulations < ActiveRecord::Migration
  def change
    create_table :populations, {:id => false} do |t|
      t.string :name
      t.integer :population

      t.timestamps null: false
    end
    execute "ALTER TABLE populations ADD PRIMARY KEY (name);"
  end
end
