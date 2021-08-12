class StudentsController < ApplicationController
  def index
  end

  def create
    @student = Student.create(student_params)
    if @student.valid?
      # redirect_to dojo_student_path(dojo_id: @student.dojo_id, id: @student.id)
      redirect_to dojo_student_path(@student.dojo, @student)
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
    @dojos = Dojo.all
    @show_student = Student.find(params[:id])
    @home_dojo = Dojo.find(params[:dojo_id])
  end

  def show
    @show_student = Student.find(params[:id])
    @home_dojo = Dojo.find(params[:dojo_id])
    @students_by_dojo = Dojo.find(params[:dojo_id]).students
  end

  def update
    student = Student.find(params[:id])
    student.update(student_params)
    student.save
    @home_dojo = Dojo.find(params[:dojo_id])
    # MUST HAVE IF STATEMENT or it will throw error if there is no error tp give a full message for
    puts student.errors.full_messages if student.errors
    redirect_to "/dojos"
    # fail   <<<< Checks params being passed through
  end

  def destroy
    student = Student.find(params[:id])
    student.destroy
    redirect_to "/dojos"
  end


  private
    def student_params
      params.require(:student).permit(:first_name, :last_name, :email, :dojo_id)
    end
  

end
