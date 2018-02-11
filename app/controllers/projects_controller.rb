require 'will_paginate/array'

class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show, :update]
  before_action :authorize_admin

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all.order("created_at desc")

    @projects = Project.all.sort_by {|i| i.start_date - i.end_date}.reverse!.paginate(:page => params[:page], :per_page => 100)
    @projects = Project.all.sort_by {|i| i.start_date - i.end_date}.reverse!.paginate(:page => params[:page], :per_page => 100)
    @your_int = []
    Project.all.sort_by {|i| i.start_date - i.end_date}.reverse!.each_with_index do |project, index|
      @your_int << {id: index, start_date: project.start_date, end_date: project.end_date}
    end
    gon.your_int = @your_int

    if user_signed_in? 
      @projects = Project.all.sort_by {|i| i.start_date - i.end_date}.reverse!.paginate(:page => params[:page], :per_page => 100)
      @projects = Project.all.sort_by {|i| i.start_date - i.end_date}.reverse!.paginate(:page => params[:page], :per_page => 100)
      @your_int = []
      current_user.projects.sort_by {|i| i.start_date - i.end_date}.reverse!.each_with_index do |project, index|
        @your_int << {id: index, start_date: project.start_date, end_date: project.end_date}
      end
      gon.your_int = @your_int
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    params[:project][:start_date] = Date.strptime(params[:project][:start_date], "%m/%d/%Y")
    params[:project][:end_date] = Date.strptime(params[:project][:end_date], "%m/%d/%Y")
    @project = current_user.projects.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # Adds Project Collaborators
  def addfriend
    @project = Project.find(params[:id])
    @project.users << User.find(params[:user_id])
    respond_to do |format|
      format.html { redirect_to project, :notice => 'Added.' }
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:name, :start_date, :end_date, :plinks, :build_one, :build_two, :build_three, :build_four, :build_five, :build_six, :build_seven, :build_eight, :build_nine, :build_ten, :build_eleven, :build_twelve, :build_thirteen, :build_fourteen, :build_fifthteen, :build_sixteen, :build_seventeen, :build_eighteen, :build_nineteen, :build_twentee, :build_twenteeone, :build_twenteetwo, :build_twenteethree, :build_twenteefour, :build_twenteefive, :build_twenteesix, :build_twenteeseven, :user_id)
    end

    def authorize_admin
      :authenticate_user! && current_user.try(:admin?)
    end
end
