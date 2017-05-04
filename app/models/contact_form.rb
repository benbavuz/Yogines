class ContactForm < MailForm::Base

  attribute :name
  attribute :email
  attribute :phone
  attribute :message


  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Ines, you have a new email",
      :to => "benjamin.bavuz@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end


end
