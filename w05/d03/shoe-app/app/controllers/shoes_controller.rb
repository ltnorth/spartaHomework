class ShoesController < ApplicationController
  # GET /shoes
  def index
    @shoes = current_user.shoes
  end

  # GET /shoes/1
  def show
    @shoe = current_user.shoes.find(params[:id])
  end

  # GET /shoes/new
  def new
    @shoe = Shoe.new
  end

  # GET /shoes/1/edit
  def edit
    @shoe = current_user.shoes.find(params[:id])
  end

  # POST /shoes
  def create
    shoe = current_user.shoes.create(shoe_params)

    show_page = user_shoe_path(current_user.id, shoe.id)
    redirect_to show_page
  end

  # PATCH/PUT /shoes/1
  # PATCH/PUT /shoes/1.json
  def update
    shoe = current_user.shoes.find(params[:id])
    shoe.update(shoe_params)
    
    show_page = user_shoe_path(current_user.id, shoe.id)
    redirect_to show_page
  end

  # DELETE /shoes/1
  # DELETE /shoes/1.json
  def destroy
    current_user.shoes.destroy(params[:id])
    redirect_to user_shoes_path
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def shoe_params
      params.require(:shoe).permit(:style, :size, :color)
    end
end
