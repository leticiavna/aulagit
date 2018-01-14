class ContactsController < ApplicationController
    def index
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
  	if @contact.save
      flash[:notice] = "Formulário enviado!"
  	  redirect_to join_path
    else
      flash.now[:alert] = "Algo errado aconteceu." #sempre antes do render, usar o .now
      render "index"
    end
  end
end
