class StudentsController < ApplicationController

  def new
    render :new
  end

  def index
    @students = Student.all
    render :index
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    Student.create(first_name: params[:first_name], last_name: params[:last_name])
    redirect_to students_path
  end

end
