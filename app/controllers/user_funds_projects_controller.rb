class UserFundsProjectsController < ApplicationController
  before_action :set_user_funds_project, only: [:show, :edit, :update, :destroy]

  # GET /user_funds_projects
  # GET /user_funds_projects.json
  def index
    @user_funds_projects = UserFundsProject.all.where(User_id: current_user.id)
  end

  # GET /user_funds_projects/1
  # GET /user_funds_projects/1.json
  def show
  end

  # GET /user_funds_projects/new
  def new
    @user_funds_project = UserFundsProject.new
    @user_funds_project.User_id= current_user.id
    @user_funds_project.Project_id= session[:current_project_id]

  end

  # GET /user_funds_projects/1/edit
  def edit
  end

  # POST /user_funds_projects
  # POST /user_funds_projects.json
  def create
    @user = current_user
    @project = Project.find(session[:current_project_id])
    PayMailer.with(user: @user, project: @project).fund_request.deliver_later

    @user_funds_project = UserFundsProject.new(user_funds_project_params)
    @user_funds_project.User_id= current_user.id
    @user_funds_project.Project_id= session[:current_project_id]
    @user_funds_project.status = "waiting"

    respond_to do |format|
      if @user_funds_project.save
        format.html { redirect_to @user_funds_project, notice: 'User funds project was successfully created.' }
        format.json { render :show, status: :created, location: @user_funds_project }
      else
        format.html { render :new }
        format.json { render json: @user_funds_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_funds_projects/1
  # PATCH/PUT /user_funds_projects/1.json
  def update
    respond_to do |format|
      if @user_funds_project.update(user_funds_project_params)
        format.html { redirect_to @user_funds_project, notice: 'User funds project was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_funds_project }
      else
        format.html { render :edit }
        format.json { render json: @user_funds_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_funds_projects/1
  # DELETE /user_funds_projects/1.json
  def destroy
    @user_funds_project.destroy
    respond_to do |format|
      format.html { redirect_to user_funds_projects_url, notice: 'User funds project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_funds_project
      @user_funds_project = UserFundsProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_funds_project_params
      params.require(:user_funds_project).permit(:User_id, :Project_id, :amount)
    end
end
