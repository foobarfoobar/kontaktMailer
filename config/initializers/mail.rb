# ActionMailer sendet ueber sendmail, bei UNIX auch MailTransferAgents wie Postfix oder Exim
# Wenn SMTP enutzt werden soll, diese Datei bzw. diesen Hash einbinden
# ActionMailer::Base.smtp_settings = {
  # address: "smtp.AdresseDesSMTPHosts.com", # Adresse SMTP Server
  # port: 587, #Port SMTP Server
  # domain: "www.ihre-domain.com", # Domain die benutzt werden soll, um Mailer beim Server zu identifizieren;
  # # normalerweise TopLevelDomainName der Maschine, welche email versendet
  # username: '<username>', # fuer Authentifizierung am SMTP-Server, wenn authentication gesetzt
  # password: '<password>', # ...
  # authentication: :plain, # Methode, die SMTP-Server erwartet (nil, plain, login, cram_md5)
  # enable_starttls_auto: true
# }
