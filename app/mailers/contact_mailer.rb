class ContactMailer < ActionMailer::Base

  default to: 'gabrielv14@gmail.com'

    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        @phone = phone
        @state = state
        mail(from: 'ta.viajando2016@gmail.com', subject: 'Contato: "Ta Viajando?"')
    end
end
