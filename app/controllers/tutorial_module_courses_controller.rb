class TutorialModuleCoursesController < ApplicationController
  before_action :set_tutorial_module_course, only: %i[ show edit update destroy ]

  # GET /tutorial_module_courses or /tutorial_module_courses.json
  def index
    @tutorial_module_courses = TutorialModuleCourse.all
  end

  # GET /tutorial_module_courses/1 or /tutorial_module_courses/1.json
  def show
  end

  # GET /tutorial_module_courses/new
  def new
    @tutorial_module_course = TutorialModuleCourse.new
  end

  # GET /tutorial_module_courses/1/edit
  def edit
  end

  # POST /tutorial_module_courses or /tutorial_module_courses.json
  def create
    @tutorial_module_course = TutorialModuleCourse.new(tutorial_module_course_params)

    respond_to do |format|
      if @tutorial_module_course.save
        format.html { redirect_to tutorial_module_course_url(@tutorial_module_course), notice: "Tutorial module course was successfully created." }
        format.json { render :show, status: :created, location: @tutorial_module_course }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tutorial_module_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutorial_module_courses/1 or /tutorial_module_courses/1.json
  def update
    respond_to do |format|
      if @tutorial_module_course.update(tutorial_module_course_params)
        format.html { redirect_to tutorial_module_course_url(@tutorial_module_course), notice: "Tutorial module course was successfully updated." }
        format.json { render :show, status: :ok, location: @tutorial_module_course }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tutorial_module_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorial_module_courses/1 or /tutorial_module_courses/1.json
  def destroy
    @tutorial_module_course.destroy

    respond_to do |format|
      format.html { redirect_to tutorial_module_courses_url, notice: "Tutorial module course was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutorial_module_course
      @tutorial_module_course = TutorialModuleCourse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tutorial_module_course_params
      params.require(:tutorial_module_course).permit(:moduule_id, :tutor_id, :course_id)
    end
end
