class CoursesController < ApplicationController
	
	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_params)
		
		if @course.save
			redirect_to '/courses'
		else
			render 'new'
		end
	end

	private
	def course_params
		params.require(:course).permit(:name, :subject, :instructor, :semester, :year, :number, :section)
	end

end
