class Japaneses::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  protected
     def update_resource(resource, params)
      resource.update_without_current_password(params)
     end
end