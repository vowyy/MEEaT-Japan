class PagesController < ApplicationController
  before_action :you_foreigner?, only: :jhome
  before_action :you_japanese?, only: :home

  def home
    @new_meals = Meal.limit(3).order("created_at DESC")
  end

  def jhome
    @new_meals = Meal.limit(3).order("created_at DESC")
    @english_meals = Meal.joins(:foreigner).where(foreigners: { f_lang: "English" }).distinct.order("RAND()").limit(3)
  end

  private

  def you_foreigner?
    redirect_to root_path if foreigner?
  end

  def you_japanese?
    redirect_to jhome_path if japanese?
  end
end
