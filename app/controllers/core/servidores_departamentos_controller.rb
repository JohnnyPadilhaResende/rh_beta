class Core::ServidoresDepartamentosController < ApplicationController
  before_action :set_core_servidores_departamento, only: [:show, :edit, :update, :destroy]

  # GET /core/servidores_departamentos
  # GET /core/servidores_departamentos.json
  def index
    @core_servidores_departamentos = Core::ServidoresDepartamento.all
  end

  # GET /core/servidores_departamentos/1
  # GET /core/servidores_departamentos/1.json
  def show
  end

  # GET /core/servidores_departamentos/new
  def new
    @core_servidores_departamento = Core::ServidoresDepartamento.new
  end

  # GET /core/servidores_departamentos/1/edit
  def edit
  end

  # POST /core/servidores_departamentos
  # POST /core/servidores_departamentos.json
  def create
    @core_servidores_departamento = Core::ServidoresDepartamento.new(core_servidores_departamento_params)

    respond_to do |format|
      if @core_servidores_departamento.save
        format.html { redirect_to @core_servidores_departamento, notice: 'Servidores departamento was successfully created.' }
        format.json { render :show, status: :created, location: @core_servidores_departamento }
      else
        format.html { render :new }
        format.json { render json: @core_servidores_departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core/servidores_departamentos/1
  # PATCH/PUT /core/servidores_departamentos/1.json
  def update
    respond_to do |format|
      if @core_servidores_departamento.update(core_servidores_departamento_params)
        format.html { redirect_to @core_servidores_departamento, notice: 'Servidores departamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_servidores_departamento }
      else
        format.html { render :edit }
        format.json { render json: @core_servidores_departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/servidores_departamentos/1
  # DELETE /core/servidores_departamentos/1.json
  def destroy
    @core_servidores_departamento.destroy
    respond_to do |format|
      format.html { redirect_to core_servidores_departamentos_url, notice: 'Servidores departamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_servidores_departamento
      @core_servidores_departamento = Core::ServidoresDepartamento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def core_servidores_departamento_params
      params.require(:core_servidores_departamento).permit(:cdg_ordem, :cdg_dpto, :integer)
    end
end
