class LostPetsController < ApplicationController

  def index
    @lost_pets = LostPet.all
  end

  def new
    @lost_pet = LostPet.new
  end

  def show
    @lost_pet = LostPet.find(params[:id])
  end

  def create
    @lost_pet = LostPet.new(lost_pet_params)

    if @lost_pet.save
      redirect_to root_path
    else
      render :show
    end

  end

  def edit
    @lost_pet = LostPet.find(params[:id])
  end

  def update
    @lost_pet = LostPet.find(params[:id])
    @lost_pet.update(lost_pet_params)
    redirect_to root_path
  end

  def destroy
    @lost_pet = LostPet.find(params[:id])
    @lost_pet.destroy
    redirect_to root_path
  end

  private

  def lost_pet_params
    params.require(:lost_pet).permit(:birthday, :name, :photo_url, :description, :address, :breed_id, :species_id)
  end

end
