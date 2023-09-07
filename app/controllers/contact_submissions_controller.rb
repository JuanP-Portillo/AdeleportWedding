class ContactSubmissionsController < ApplicationController
  def create
    @contact_submission = ContactSubmission.new(contact_params)
    if @contact_submission.save
      ContactMailer.send_contact_email(@contact_submission).deliver_now
      flash[:notice] = "Your message has been sent!"
      redirect_to root_path
    else
      render :home
    end
  end

  def contact_params
    params.require(:contact_submission).permit(:name, :email, :phone, :message)
  end
end
