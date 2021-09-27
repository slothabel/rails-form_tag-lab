class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  #params
# => <ActionController::Parameters {"controller"=>"students", "action"=>"new"} permitted: false>

  def new
    
  end
  
  def create
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    @student.save
    redirect_to students_path
  end
  
end
