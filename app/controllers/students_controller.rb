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
binding.pry
    @student = Student.create(params[:student])

  end

  def create
  end
  
end
