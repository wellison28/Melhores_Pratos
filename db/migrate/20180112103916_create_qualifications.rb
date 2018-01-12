class CreateQualifications < ActiveRecord::Migration[5.1]
  def change
    create_table :qualifications do |t|
    	t.float :score, null:false
    	t.float :amount_spent
    	t.text :comment
      t.timestamps
    end
  end
end
