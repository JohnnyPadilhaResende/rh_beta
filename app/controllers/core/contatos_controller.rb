class Core::ContatosController < ApplicationController
  before_action :set_core_contato, only: [:show, :edit, :update, :destroy]

  # GET /core/contatos
  # GET /core/contatos.json
  def index
    @core_contatos = Core::Contato.all
  end

  # GET /core/contatos/1
  # GET /core/contatos/1.json
  def show
  end

  # GET /core/contatos/new
  def new
    @core_contato = Core::Contato.new
  end

  # GET /core/contatos/1/edit
  def edit
  end

  # POST /core/contatos
  # POST /core/contatos.json
  def create
    @core_contato = Core::Contato.new(core_contato_params)

    respond_to do |format|
      if @core_contato.save
        format.html { redirect_to @core_contato, notice: 'Contato was successfully created.' }
        format.json { render :show, status: :created, location: @core_contato }
      else
        format.html { render :new }
        format.json { render json: @core_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core/contatos/1
  # PATCH/PUT /core/contatos/1.json
  def update
    respond_to do |format|
      if @core_contato.update(core_contato_params)
        format.html { redirect_to @core_contato, notice: 'Contato was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_contato }
      else
        format.html { render :edit }
        format.json { render json: @core_contato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/contatos/1
  # DELETE /core/contatos/1.json
  def destroy
    @core_contato.destroy
    respond_to do |format|
      format.html { redirect_to core_contatos_url, notice: 'Contato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_contato
      @core_contato = Core::Contato.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def core_contato_params
      params.require(:core_contato).permit(:cdg_ordem, :end_telefone, :end_email)
    end
end
