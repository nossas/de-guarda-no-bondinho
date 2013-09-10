class UsersController < InheritedResources::Base
  def permitted_params
    params.permit(user: [:name, :email, :phone])
  end
end
