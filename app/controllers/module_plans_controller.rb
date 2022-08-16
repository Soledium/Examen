class ModulePlansController < ApplicationController
  before_action :set_module_plan, only: %i[ show edit update destroy ]

  # GET /module_plans or /module_plans.json
  def index
    @module_plans = ModulePlan.all
  end

  # GET /module_plans/1 or /module_plans/1.json
  def show
  end

  # GET /module_plans/new
  def new
    @module_plan = ModulePlan.new
  end

  # GET /module_plans/1/edit
  def edit
  end

  # POST /module_plans or /module_plans.json
  def create
    @module_plan = ModulePlan.new(module_plan_params)

    respond_to do |format|
      if @module_plan.save
        format.html { redirect_to module_plan_url(@module_plan), notice: "Module plan was successfully created." }
        format.json { render :show, status: :created, location: @module_plan }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @module_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /module_plans/1 or /module_plans/1.json
  def update
    respond_to do |format|
      if @module_plan.update(module_plan_params)
        format.html { redirect_to module_plan_url(@module_plan), notice: "Module plan was successfully updated." }
        format.json { render :show, status: :ok, location: @module_plan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @module_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /module_plans/1 or /module_plans/1.json
  def destroy
    @module_plan.destroy

    respond_to do |format|
      format.html { redirect_to module_plans_url, notice: "Module plan was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_module_plan
      @module_plan = ModulePlan.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def module_plan_params
      params.require(:module_plan).permit(:moduule_id, :training_plan_id)
    end
end
