class HomeController < ApplicationController
  def index
  end

  def send_mail
    name = params[:name]
    email = params[:email]
    phone = params[:phone]
    body = params[:comments]
    state = params[:state]
    ContactMailer.contact_email(name, email, phone, body, state).deliver_now
    redirect_to root_path, alert: 'Mensagem enviada'
  end
end
