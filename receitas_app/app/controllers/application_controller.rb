class ApplicationController < ActionController::Base
  allow_browser versions: :modern

  before_action :set_locale

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  # Garante que o locale fique na URL ao navegar
  def default_url_options
    { locale: I18n.locale }
  end
end

