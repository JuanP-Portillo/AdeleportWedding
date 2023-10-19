class ClientMailer < ApplicationMailer
  def send_client_email
    @contact_submission = params[:contact_submission]
    to = Rails.env.production? ? ENV["RECEIVER_EMAIL"] : Rails.application.credentials[:sendgrid][:receiver_email]
    mail(
      to: ENV["RECEIVER_EMAIL"],
      subject: "New Wedding Contact Form Submission"
    )
  end
end
