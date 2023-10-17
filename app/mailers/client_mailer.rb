class ClientMailer < ApplicationMailer
  def send_client_email
    @contact_submission = params[:contact_submission]

    mail(
      to: "alienordarenberg@gmail.com",
      subject: "New Wedding Contact Form Submission"
    )
  end
end
