class PayMailer < ApplicationMailer
  def fund_request
    @user = params[:user]
    @project = params[:project]
    @url  = 'http://example.com/login'
    mail(to: @project.User.email, subject: 'Fund Request')
  end
end
