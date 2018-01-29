module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    puts "clase: "
    puts user.class
    if user.class.to_s == "Administrador"
      session[:admin_id] = user.id
      session[:arren_id] = nil
    #  puts session[:admin_id]
    elsif user.class.to_s=="Arrendatario"
      session[:arren_id] = user.id
      session[:admin_id]=nil
      #puts session[:arren_id]
    end

    
  end
  
  # Returns the current logged-in user (if any).
  def current_user
    if   !session[:admin_id].nil? #administrador
      @current_user ||= Administrador.find_by(id: session[:admin_id])
    elsif   !session[:arren_id].nil?  #es arrendatario
      @current_user ||= Arrendatario.find_by(id: session[:arren_id]) 
    end
   
  end
  
  #retorna si es arrendatario o dministrador
  def admin?
    (current_user.class.to_s=="Administrador")? true : false
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
  
  def log_out
    session.delete(:admin_id)
    session.delete(:arren_id)
    @current_user = nil
  end
  
  
end
