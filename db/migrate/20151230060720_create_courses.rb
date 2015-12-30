class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|

    	t.string	:name
    	t.string 	:subject
    	t.string 	:instructor
    	t.string	:semester
    	
    	t.integer	:year
    	t.integer 	:number
    	t.integer	:section


      t.timestamps null: false
    end
  end
end
