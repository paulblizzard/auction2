class UserMailer < ActionMailer::Base
  default from: "pressgalleryauction@gmail.com"


  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.signup_confirmation.subject
  #
  def signup_confirmation(person)
    @person = person
    mail (:to       =>    @person.email, 
          :subject  =>    "Confirmation - Queens Park Auction", 
          :reply_to =>    "pressgalleryauction@gmail.com")
  end

  def returning_user_confirmation(person)
    @person = person
    
    mail (:to       =>    @person.email, 
          :subject  =>    "Queens Park Auction - Welcome Back!", 
          :reply_to =>    "pressgalleryauction@gmail.com")
    
    end
  end
end
