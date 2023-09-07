class PagesController < ApplicationController
  def home
    @contact_submission = ContactSubmission.new
  end

  def contact_email
    @contact_submission = ContactSubmission.new(contact_params)
    if @contact_submission.save
      ContactMailer.send_contact_email(@contact_submission).deliver_now
      flash[:notice] = "Your message has been sent!"
      redirect_to root_path
    else
      render :home
    end
  end
end
