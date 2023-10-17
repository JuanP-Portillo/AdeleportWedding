class ContactSubmissionsController < ApplicationController
  def create
    @contact_submission = ContactSubmission.new(contact_submission_params)
    p contact_submission_params
    if @contact_submission.save!
      ClientMailer.with(contact_submission: @contact_submission).send_client_email.deliver_now
      redirect_to root_path
      flash[:notice] = "Your message has been sent!"
    else
      render :home
      flash[:notice] = "Failure heiafruehifru!"
    end
  end

  def contact_submission_params
    params.require(:contact_submission).permit(:name, :email, :phone, :message)
  end
end
