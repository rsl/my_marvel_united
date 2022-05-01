class VillainsController < WebController
  before_action :authenticate_user!
  before_action :load_villain, except: %i[index new create]

  def index
    @villains = Villain.includes(:box).order(:name)
    if params[:query].present?
      @villains = @villains.search_by_name(params[:query])
    else
      @villains = @villains.order(:name)
    end
    if character_display == 'cards'
      @villains = @villains.includes(card_attachment: :blob)
    end
  end

  def new
    @villain = Villain.new
  end

  def create
    @villain = Villain.new
    if @villain.update(villain_params)
      flash[:notice] = 'Villain added!'
      redirect_to villains_url
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
    if @villain.update(villain_params)
      flash[:notice] = 'Villain updated!'
      redirect_to villains_url
    else
      flash.now[:alert] = 'There a problem! Please try again.'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @villain.destroy
      flash[:notice] = 'Villain deleted!'
    else
      flash[:alert] = 'There a problem! Please try again.'
    end
    redirect_to villains_url, status: :see_other
  end

  private

  def load_villain
    @villain = Villain.friendly.find(params[:id])
  end

  def villain_params
    params.require(:villain).permit(
      :name,
      :box_id,
      :card,
      :real_name,
      :gender_identity,
      :sexual_orientation,
      :mutant,
    )
  end
end
