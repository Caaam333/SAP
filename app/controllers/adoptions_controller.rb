class AdoptionsController < ApplicationController

  def index
    @adoptions = Adoption.all
  end

  def show
    @adoption = Adoption.find(params[:id])
  end

  def edit

  end

  def update

  end

  def new
    @adoption = Adoption.new
    @lost_pet = LostPet.find(params[:lost_pet_id])
  end

  def create
    @adoption = Adoption.new(adoption_params)
    description = @lost_pet.description
    user_id = params(current_user_id)

  end

  private

end
