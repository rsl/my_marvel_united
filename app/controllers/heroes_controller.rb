class HeroesController < WebController
  before_action :authenticate_user!
  before_action :load_hero, except: %i[index new create]

  def index
    @heroes = Hero.includes(:box).order(:name).all
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new
    if @hero.update(hero_params)
      flash[:notice] = 'Hero added!'
      redirect_to heroes_url
    else
      flash.now[:alert] = 'There a problem! Please try again.'
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # Render
  end

  def edit
    # Render
  end

  def update
    if @hero.update(hero_params)
      flash[:notice] = 'Hero updated!'
      redirect_to heroes_url
    else
      flash.now[:alert] = 'There a problem! Please try again.'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @hero.destroy
      flash[:notice] = 'Hero deleted!'
    else
      flash[:alert] = 'There a problem! Please try again.'
    end
    redirect_to heroes_url, status: :see_other
  end

  private

  def load_hero
    @hero = Hero.friendly.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(
      :name,
      :box_id,
      :card,
      :real_name,
      :gender_identity,
      :sexual_orientation,
    )
  end
end
