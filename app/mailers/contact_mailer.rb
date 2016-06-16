class ContactMailer < ActionMailer::Base

  default to: 'gabrielv14@gmail.com'

    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body

        mail(from: email, subject: 'Contato: "Ta Viajando?"')
    end
end
