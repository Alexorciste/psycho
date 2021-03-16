class SpecialistsController < ApplicationController
  def index
    @specialists = Specialist.all
  end

  def show
    # @category = Category.find(params[:category_id])
    @specialist = Specialist.find(params[:id])
  end

  def new
    @specialist = Specialist.new
    @category = Category.find(params[:category_id])
  end

  def create
    @specialist = Specialist.create(specialist_params)
    @specialist.category = Category.find(params[:category_id])
    if @specialist.save
      redirect_to category_path(@specialist.category), notice: 'Produit créé.'
    else
      render :new
    end
  end

  def edit
    @specialist = Specialist.find(params[:id])
    @category = @specialist.category
   
  end

  def update
    
    @specialist = Specialist.find(params[:id])
    # @specialist.update(specialist_params)
    if @specialist.update(specialist_params)
      redirect_to category_path(@specialist.category), notice: 'Le texte a été modifié.'
    else
      render :edit
    end
    # redirect_to category_path(@category)
  end

  def destroy
    @specialist = Specialist.find(params[:id])
    @specialist.destroy
    redirect_to category_path
  end

  private

  def specialist_params
    params.require(:specialist).permit(:lastname, :firstname, :profession, :description, :rating, photos: [])
  end
end
