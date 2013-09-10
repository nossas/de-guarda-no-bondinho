class UsersController < InheritedResources::Base
  after_action(only: :create) { session[:user_id] = @user.id }

  def create
    @user = User.create_with(params[:user]).find_or_create_by(email: params[:user][:email])
    create!
  end

  def permitted_params
    params.permit(user: [:name, :email, :phone])
  end
end
