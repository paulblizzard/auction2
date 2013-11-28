class UserMailer < ActionMailer::Base
  default from: "pressgalleryauction@gmail.com"


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(person)
    @person = person
    mail to: @person.email, subject: "Confirmation - Queens Park Auction"
  end

  def returning_user_confirmation(person)
    @person = person
    mail to: @person.email, subjet: "Queens Park Auction - Welcome Back!"
  end
end
