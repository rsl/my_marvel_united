class WebController < ApplicationController
  helper_method def character_display
    session[:character_display]
  end

  private

  def ensure_character_display
    session[:character_display] ||=  'table'
    session[:character_display] = params[:character_display] if params[:character_display]
  end
end
