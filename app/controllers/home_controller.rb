class HomeController < ApplicationController
  def index
  end

  def send_mail
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    ContactMailer.contact_email(name, email, body).deliver_now
    redirect_to root_path, alert: 'Mensagem enviada'
  end
end
