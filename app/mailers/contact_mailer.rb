class ContactMailer < ActionMailer::Base

  default to: 'ta.viajando2016@gmail.com'

    def contact_email(name, email, phone, body, state)
        @name = name
        @email = email
        @phone = phone
        @body = body
        @state = state
        mail(from: 'ta.viajando2016@gmail.com', subject: 'Contato: "Ta Viajando?"')
    end
end
