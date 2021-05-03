class ApplicationMailer < ActionMailer::Base
  default from: 'sender.petrescue@gmail.com' # email address to send mails from application
  layout 'mailer'
end
