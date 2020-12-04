class FlatsController < ApplicationController
  def index
    if params[:query].present?
      @flats = Flat.search_by_location_title(params[:query])
    else
      @flats = Flat.all
    end
  end

  def show
    @flat = Flat.find(params[:id])
    @review = Review.new
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(set_flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(set_flat_params)
    @flat.user = current_user
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :edit
    end
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat_params
    params.require(:flat).permit(:title, :description, :location, :price, :photo, :guests, :bedrooms, :bathrooms)
  end

end
