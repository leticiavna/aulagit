class ItemsController < ApplicationController

  def index
  	@item = Item.all
  end

  def new
  	@item = Item.new
  end

  def create
  	@item = Item.new(item_params)
  	if @item.save
      flash[:notice] = "Produto cadastrado!"
  	  redirect_to items_path
    else
      flash.now[:alert] = "Algo errado aconteceu." #sempre antes do render, usar o .now
      render "new"
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path
  end


  private

  def item_params
  	params.require(:item).permit(:nome, :price)
  end

end
