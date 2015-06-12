class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.confirmation.subject
  # @param name {String} Kundenname
  # @param email {String} Kundenmail
   def confirmation(name, email)
    @greeting = name
    # Adding an image as attachment
    # um es in der Mail darzustellen, add: <%= image_tag attachments['rails.png'].url %> in confirmation.html.erb
    attachments['rails.png'] = File.read("#{Rails.root}/app/assets/images/rails.png")
    # now mail..
    mail to: email, from: "info@railsbuch.de", subject: "Kontaktnachricht erhalten" do |format|
      format.html { render :layout => 'mailer' } # mailer enthaelt das layout; ab do bis end nicht noetig!
      format.text
    end
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.inquiry.subject
  #
  # @param contact_message {Object} ContactMessage- Object
  def inquiry(contact_message)
    @contact_message = contact_message
    # @greeting = @contact_message.name hier wird anderer Weg genutzt (gesamtes Objectvariable contact_message)

    # and mail; nutzt auch mailer-layout
    mail to: "info@railsbuch.de", from: @contact_message.email, subject: "Neue Kontaktanfrage" 
  end
end
