class LocationsController < WebController
  before_action :authenticate_user!
  before_action :load_location, except: %i[index new create]

  def index
    @locations = Location.order(:name).all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new
    if @location.update(location_params)
      flash[:notice] = 'Location added!'
      redirect_to locations_url
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
    if @location.update(location_params)
      flash[:notice] = 'Location updated!'
      redirect_to locations_url
    else
      flash.now[:alert] = 'There a problem! Please try again.'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @location.destroy
      flash[:notice] = 'Location deleted!'
    else
      flash[:alert] = 'There a problem! Please try again.'
    end
    redirect_to locations_url, status: :see_other
  end

  private

  def load_location
    @location = Location.find(params[:id])
  end

  def location_params
    params.require(:location).permit :name, :description
  end
end
