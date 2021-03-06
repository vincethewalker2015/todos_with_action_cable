class OwnersController < ApplicationController
  
  def new
    @owner = Owner.new
  end
  
  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      flash[:success] = "New Owner created"
      redirect_to owners_path
    else
      render 'new'
    end
      
  end
  
  def show
    @owner = Owner.find(params[:id])
  end
  
  def index
    @owners = Owner.all
  end
  
  def edit
    
  end
  
  def update
    
  end
  
  private
  
  def owner_params
    params.require(:owner).permit (:name)
  end
end