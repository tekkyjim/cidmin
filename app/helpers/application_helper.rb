# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def next_game(city)
    game = Game.find_by_city_id(city)
  end
end
