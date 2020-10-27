class Core::ContatosController < ApplicationController
  before_action :autorizacao, only: [:destroy]
  before_action :set_contato, only: [:destroy]

  def index
    @pessoas = Core::Pessoal.all
  end

  def new
    if params[:cdg_ordem].present?
      @contato = Core::Contato.new(cdg_ordem: params[:cdg_ordem])
    else
      @contato = Core::Contato.new
    end
  end

  def create
    @contato = Core::Contato.new(core_contato_params)

    respond_to do |format|
      if @contato.save
        format.html { redirect_to core_contatos_path, notice: 'Contatos atualizados com sucesso.' }
        format.json { render :index, status: :created, location: @contato }
      else
        format.html { render :new }
        format.json { render json: @contato.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @contato.destroy
    respond_to do |format|
      format.html { redirect_to core_contatos_url, notice: 'Contato removido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
  def core_contato_params
    params.require(:core_contato).permit(:cdg_ordem, :end_telefone, :end_email)
  end

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
