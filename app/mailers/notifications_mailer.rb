class NotificationsMailer < ActionMailer::Base
  default from: "from@example.com"
  default to:   "gregory.kenenitz@gmail.com"

   def contact_form
    mail(:to => "gregory.kenenitz@gmail.com", :subject => "User Feedback")
  end
end
