class Acme::RegistrationsController < Devise::RegistrationsController
  before_action :configure_account_update_params, only: [:update]

  def configure_account_update_params
    devise_parameter_sanitizer.for(:account_update) << :mobile_number
    devise_parameter_sanitizer.for(:account_update) << :full_name
  end
end