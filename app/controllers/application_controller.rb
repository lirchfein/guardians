class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  after_action :store_location

  include Pundit

  # Adding last and first name to strong parmas
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :avatar])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :avatar])
  end

  # Pundit: white-list approach.
  after_action :verify_authorized, except: [:index, :user_not_authorized], unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "Sorry buddy, you are not allowed to go any further here."
    redirect_to(authorization_path)
  end

  protected

  def after_sign_in_path_for(resource)
    stored_location_for(resource)
  end

  def store_location
    # store last url - this is needed for post-login redirect to whatever the user last visited.
    if (request.fullpath != "/users/sign_in" &&
        request.fullpath != "/users/sign_up" &&
        request.fullpath != "/users/password" &&
        request.fullpath != "/users/sign_out" &&
        !request.xhr?) # don't store ajax calls
      session["user_return_to"] = request.fullpath
    end
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
