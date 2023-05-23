class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  def index
    @pets = Pet.all
  end

  def show; end

  def new
    @pet = Pet.new
  end

  def create
    pet = Pet.create(pets_params)
    redirect_to pet_path(pet)
  end

  def edit; end
  
  def update
    @pet.update(pets_params)
    redirect_to pet_path(@pet)
  end

  def destroy
    @pet.destroy
    redirect_to pets_path, status: :see_other
  end

  private

  def set_pet
    @pet = Pet.find(params[:id])
  end

  def pets_params
    params.require(:pet).permit(:name, :address, :species, :found_on)
  end
end
