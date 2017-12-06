class SessionsController < ApplicationController
  def new
  end
  
  def create
    arren = Arrendatario.find_by(mail: params[:session][:email].downcase) 
    admin = Administrador.find_by(mail: params[:session][:email].downcase) 
    
    user= arren ? arren : admin
    
    puts user
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      log_in(user)
      redirect_to user

    else
      # Create an error message.
      flash[:danger] = 'Combinación email/password invalida' # Not quite right!
      render 'new'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
