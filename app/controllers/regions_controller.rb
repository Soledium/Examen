class RegionsController < ApplicationController
  before_action :set_student, only: %i[ show edit update destroy ]

  def index
    @regions = Region.all
  end

  def show
  end

end
