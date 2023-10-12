class ContactSubmissionsController < ApplicationController
  def create
    @contact_submission = ContactSubmission.new(contact_params)
    if @contact_submission.save
      ContactMailer.with(contact_submission: @contact_submission).send_contact_email.deliver_now
      redirect_to root_path
      flash[:notice] = "Your message has been sent!"
    else
      render :home
      flash[:notice] = "Failure heiafruehifru!"
    end
  end

  def contact_params
    params.require(:contact_submission).permit(:name, :email, :phone, :message)
  end
end
