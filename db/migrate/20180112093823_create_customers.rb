class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name, unique: true, limit: 80
      t.integer :age
      t.timestamps
    end
  end
end
