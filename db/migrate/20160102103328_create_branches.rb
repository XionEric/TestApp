class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
    	t.string :name
    	t.string :image
    	t.references :category

      t.timestamps null: false
    end
  end
end
