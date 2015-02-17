class ProjectMailer < ApplicationMailer
  def project_created(user, project)
    @user = user
    @project = project
    mail(to: @user.email, subject: "Your project #{@project.title} has been created")
  end
end
