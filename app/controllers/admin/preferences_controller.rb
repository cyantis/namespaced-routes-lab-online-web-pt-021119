class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.new
  end

  def create
    @preferenc = Preference.create(preference_params)
  end

  def update
    @preference = Preference.find(params[:id])
    @preference = Preference.update(preference_params)
    redirect_to admin_preferences_path
  end


  private

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end
