class ContactMailer < ApplicationMailer
  def send_contact_email
    @contact_submission = params[:contact_submission]

    mail(
      to: "alienordarenberg@yahoo.co.uk", # Replace with your email address
      from: "weddingadele@gmail.com",
      subject: "New Wedding Contact Form Submission"
    )
  end
end
