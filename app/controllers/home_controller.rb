class HomeController < ApplicationController
  def index
  end

  def about
  end

  def listMy
  	@courses = Course.all
  end

  def enrolledList
  	@records = Record.all
  	@mycourses = []
  	@records.each do |record|
  		if Person.find(record.user_id).user_id == current_user.id
  			@mycourses.push(Course.find(record.course_id));
  		end
  	end
  end
  
end
