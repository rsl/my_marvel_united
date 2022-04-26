class HomeController < WebController
  def index
    if signed_in?
      @hero = Hero.order(Arel.sql('RANDOM()')).first
    end
  end
end
