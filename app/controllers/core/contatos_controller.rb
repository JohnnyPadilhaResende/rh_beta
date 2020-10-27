class Core::ContatosController < ApplicationController
  before_action :autorizacao, only: [:destroy]
  before_action :set_contato, only: [:destroy]

  def index
    @contatos = Core::Contato.all
  end

  def destroy
    @contato.destroy
    respond_to do |format|
      format.html { redirect_to core_contatos_url, notice: 'Contato removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    def set_contato
      @contato = Core::Contato.find(params[:id])
    end

  def autorizacao
    unless user_signed_in?#Devise Method
      respond_to do |format|
      format.html { flash[:error] = "Sem autorização, por favor realize login" }
    end
    return redirect_to root_path
    end
  end

end
