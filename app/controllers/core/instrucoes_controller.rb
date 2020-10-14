class Core::InstrucoesController < ApplicationController
  before_action :set_core_instruco, only: [:show, :edit, :update, :destroy]

  # GET /core/instrucoes
  # GET /core/instrucoes.json
  def index
    @core_instrucoes = Core::Instrucao.all
  end

  # GET /core/instrucoes/1
  # GET /core/instrucoes/1.json
  def show
  end

  # GET /core/instrucoes/new
  def new
    @core_instruco = Core::Instrucao.new
  end

  # GET /core/instrucoes/1/edit
  def edit
  end

  # POST /core/instrucoes
  # POST /core/instrucoes.json
  def create
    @core_instruco = Core::Instrucao.new(core_instruco_params)

    respond_to do |format|
      if @core_instruco.save
        format.html { redirect_to @core_instruco, notice: 'Instrucao was successfully created.' }
        format.json { render :show, status: :created, location: @core_instruco }
      else
        format.html { render :new }
        format.json { render json: @core_instruco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core/instrucoes/1
  # PATCH/PUT /core/instrucoes/1.json
  def update
    respond_to do |format|
      if @core_instruco.update(core_instruco_params)
        format.html { redirect_to @core_instruco, notice: 'Instrucao was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_instruco }
      else
        format.html { render :edit }
        format.json { render json: @core_instruco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/instrucoes/1
  # DELETE /core/instrucoes/1.json
  def destroy
    @core_instruco.destroy
    respond_to do |format|
      format.html { redirect_to core_instrucoes_url, notice: 'Instrucao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_instruco
      @core_instruco = Core::Instrucao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def core_instruco_params
      params.require(:core_instruco).permit(:cdg_grau_instrucao, :nme_curso, :nme_instituicao_ensino)
    end
end
