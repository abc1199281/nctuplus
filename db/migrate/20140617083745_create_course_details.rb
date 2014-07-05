class CreateCourseDetails < ActiveRecord::Migration
  def change
    create_table :course_details do |t|
	  t.integer :course_id
	  t.integer :teacher_id
		t.integer :semester_id
		t.string :time_and_room
		t.string :temp_cos_id
		t.string :brief
		t.string :memo
		t.string :students_limit
		t.string :cos_type
		t.string :credit
		
    t.timestamps
    end
	add_index :course_details, :semester_id	
	add_index :course_details, :course_id
	add_index :course_details, :teacher_id
  end
end