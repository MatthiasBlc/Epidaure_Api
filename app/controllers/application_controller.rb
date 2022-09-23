class ApplicationController < ActionController::API

  private 
  
  def check_if_admin?
    if user_signed_in?
       unless current_user.status_administrator? 
       render json: {
          message:"Vous n'avez pas accès à cette page",
        }, status:401
       end
    end
  end

  def check_if_holder?
    if user_signed_in?
      unless current_user.status_holder?
      render json: {
        message:"Vous n'avez pas accès à cette page",
      }, status:401
      end
    end
  end

end
