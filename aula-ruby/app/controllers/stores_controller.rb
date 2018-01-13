class StoresController < ApplicationController
  def new
  	@store = Store.new
  end

#Nao esquecer de validar todas as operacoes de bd, com o if else
  def create
  	@store = Store.new(store_params)
  	if @store.save
      flash[:notice] = "Loja criada com sucesso."
  	  redirect_to stores_path
    else
      flash.now[:alert] = "Algo errado aconteceu." #sempre antes do render, usar o .now
      render "new"
    end
  end

  def index
  	@store = Store.all
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path
  end


  private

  def store_params
  	params.require(:store).permit(:address, :telephone)
  end

end
