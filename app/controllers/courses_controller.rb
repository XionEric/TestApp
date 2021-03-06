class CoursesController < ApplicationController
	
	before_action :require_user, only:[:show]
	before_action :require_editor, only:[:edit]

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

	def show
		@course = Course.find(params[:id])
	end

	def edit
		@course = Course.find(params[:id])
	end

	def update
		@course = Course.find(params[:id])
		if @course.update_attributes(course_params)
			redirect_to(:action => 'show', :id => @course.id)
		else
			render 'edit'
		end
	end

	def destroy
		@course = Course.find(params[:id])
		@course.destroy

		redirect_to courses_path	
	end

	private
	def course_params
		params.require(:course).permit(:name, :subject, :instructor, :semester, :year, :number, :section)
	end

end
