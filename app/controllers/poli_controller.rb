class PoliController < ApplicationController
  def index
    @poli = Poli.all
  end

  def show
    @poli = Poli.find(params[:id])
  end

  def new
    @poli = Poli.new
  end

  def create
    @poli = Poli.new(poli_params)
    
    if @poli.save
      redirect_to INSERT HERE
    else
    render :new
    end
  end

private

  def poli_params
    params.require(:poli).permit(:first_name, :last_name, :home_state, :party)
  end
end
