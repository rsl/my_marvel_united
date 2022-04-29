class BoxesController < WebController
  before_action :authenticate_user!
  before_action :load_box, except: %i[index new create]

  def index
    @boxes = Box.order(:name).all
  end

  def new
    @box = Box.new
  end

  def create
    @box = Box.new
    if @box.update(box_params)
      flash[:notice] = 'Box added!'
      redirect_to boxes_url
    else
      flash.now[:alert] = 'stupid'
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
    if @box.update(box_params)
      flash[:notice] = 'Box updated!'
      redirect_to boxes_url
    else
      flash.now[:alert] = 'stupid'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    if @box.destroy
      flash[:notice] = 'Box deleted!'
    else
      flash[:alert] = 'stupid'
    end
    redirect_to boxes_url, status: :see_other
  end

  private

  def load_box
    @box = Box.find(params[:id])
  end

  def box_params
    params.require(:box).permit :name, :description
  end
end
