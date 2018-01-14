class ApplicantsController < ApplicationController
    def index
  	@applicant = Applicant.new
  end

  def create
  	@applicant = Applicant.new(applicant_params)
  	if @applicant.save
      flash[:notice] = "Formulário enviado!"
  	  redirect_to join_path
    else
      flash.now[:alert] = "Algo errado aconteceu." #sempre antes do render, usar o .now
      render "index"
    end
  end
end
