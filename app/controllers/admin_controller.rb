class AdminController < ApplicationController
  before_action :is_admin




  def index
    @projects = Project.all
  end

  def project
    project = Project.find(params[:project])
    if params[:do] == "accept"
        project.update(state:"approved")
        flash[:accept] = "The project was succesfully accepted"
        redirect_to "/admin"

    elsif params[:do] == "reject"
        project.update(state:"reject")
        flash[:reject] = "The project was succesfully rejected"
        redirect_to "/admin"
    end
  end

  def users
    @users = User.all
  end
  def users_admin
    user = User.find(params[:user])
    if params[:do] == "admin"
        user.update(admin:true)
        flash[:admin] = "The user is admin now"
        redirect_to "/admin/users"
    elsif params[:do] == "stop_admin"
        user.update(admin:false)
        flash[:stop] = "The user is no longer a Admin"
        redirect_to "/admin/users"
    elsif params[:do] == "delete"
        user.destroy
        flash[:deleted] = "The user was deleted"
        redirect_to "/admin/users"
    end
  end

  def is_admin
    if current_user != nil
      if current_user.admin == false
        redirect_to '/home/index'
      end
    else
      redirect_to '/home/index'
    end
  end
end
