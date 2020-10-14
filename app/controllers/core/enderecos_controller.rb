class Core::EnderecosController < ApplicationController
  before_action :set_core_endereco, only: [:show, :edit, :update, :destroy]

  # GET /core/enderecos
  # GET /core/enderecos.json
  def index
    @core_enderecos = Core::Endereco.all
  end

  # GET /core/enderecos/1
  # GET /core/enderecos/1.json
  def show
  end

  # GET /core/enderecos/new
  def new
    @core_endereco = Core::Endereco.new
  end

  # GET /core/enderecos/1/edit
  def edit
  end

  # POST /core/enderecos
  # POST /core/enderecos.json
  def create
    @core_endereco = Core::Endereco.new(core_endereco_params)

    respond_to do |format|
      if @core_endereco.save
        format.html { redirect_to @core_endereco, notice: 'Endereco was successfully created.' }
        format.json { render :show, status: :created, location: @core_endereco }
      else
        format.html { render :new }
        format.json { render json: @core_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core/enderecos/1
  # PATCH/PUT /core/enderecos/1.json
  def update
    respond_to do |format|
      if @core_endereco.update(core_endereco_params)
        format.html { redirect_to @core_endereco, notice: 'Endereco was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_endereco }
      else
        format.html { render :edit }
        format.json { render json: @core_endereco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/enderecos/1
  # DELETE /core/enderecos/1.json
  def destroy
    @core_endereco.destroy
    respond_to do |format|
      format.html { redirect_to core_enderecos_url, notice: 'Endereco was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_endereco
      @core_endereco = Core::Endereco.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def core_endereco_params
      params.require(:core_endereco).permit(:cdg_ordem, :nme_logradouro, :cdg_logradouro, :nmr_lote, :nmr_quadra, :desc_complemento, :nmr_cep)
    end
end
