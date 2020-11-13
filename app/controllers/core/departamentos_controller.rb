class Core::DepartamentosController < ApplicationController
  before_action :set_core_departamento, only: [:show, :edit, :update, :destroy]

  # GET /core/departamentos
  # GET /core/departamentos.json
  def index
    @core_departamentos = Core::Departamento.all
  end

  # GET /core/departamentos/1
  # GET /core/departamentos/1.json
  def show
  end

  # GET /core/departamentos/new
  def new
    @core_departamento = Core::Departamento.new
  end

  # GET /core/departamentos/1/edit
  def edit
  end

  # POST /core/departamentos
  # POST /core/departamentos.json
  def create
    @core_departamento = Core::Departamento.new(core_departamento_params)

    respond_to do |format|
      if @core_departamento.save
        format.html { redirect_to @core_departamento, notice: 'Departamento was successfully created.' }
        format.json { render :show, status: :created, location: @core_departamento }
      else
        format.html { render :new }
        format.json { render json: @core_departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core/departamentos/1
  # PATCH/PUT /core/departamentos/1.json
  def update
    respond_to do |format|
      if @core_departamento.update(core_departamento_params)
        format.html { redirect_to @core_departamento, notice: 'Departamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_departamento }
      else
        format.html { render :edit }
        format.json { render json: @core_departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/departamentos/1
  # DELETE /core/departamentos/1.json
  def destroy
    @core_departamento.destroy
    respond_to do |format|
      format.html { redirect_to core_departamentos_url, notice: 'Departamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_departamento
      @core_departamento = Core::Departamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def core_departamento_params
      params.require(:core_departamento).permit(:nme_dpto, :vagas, :cdg_ordem_servidores, :cdg_ordem_chefe, :dta_inicio_dpto, :dta_fim_dpto, :vagas_dispo, :cdg_dpto, :cdg_dpto_pai)
    end
end
