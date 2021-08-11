class StudentsController < ApplicationController
  def index
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      # redirect_to dojo_student_path(dojo_id: @student.dojo_id, id: @student.id)
      redirect_to dojo_student_path(@student)
    else
      flash[:notice] = @dojo.errors.full_messages
      redirect_to :back
    end
  end

  def new
    @dojos = Dojo.all
    @home_dojo = Dojo.find(params[:id])
  end

  def edit
  end

  def show
  end

  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email)
    end
  

end
