# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:email, :name, :password, :password_cofirmation)
  end

  def account_update_params
    params.require(:user).permit(:email, :name, :password, :password_cofirmation, :current_password)
  end
end
