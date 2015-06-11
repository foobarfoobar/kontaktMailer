class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.confirmation.subject
  # @param name Kundenname
  # @param email Kundenmail
   def confirmation(name, email)
    @greeting = name
    mail to: email, from: "info@railsbuch.de", subject: "Kontaktnachricht erhalten"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.inquiry.subject
  #
  # @param contact_message Instanzvariable
  def inquiry(contact_message)
    @contact_message = contact_message
    # @greeting = @contact_message.name hier wird anderer Weg genutzt (gesamtes Objectvariable contact_message)

    mail to: "info@railsbuch.de", from: @contact_message.email, subject: "Neue Kontaktanfrage"
  end
end
