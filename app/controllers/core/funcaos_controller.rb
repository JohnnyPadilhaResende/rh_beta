class Core::FuncaosController < ApplicationController
  before_action :set_core_funcao, only: [:show, :edit, :update, :destroy]

  # GET /core/funcaos
  # GET /core/funcaos.json
  def index
    @core_funcaos = Core::Funcao.all
  end

  # GET /core/funcaos/1
  # GET /core/funcaos/1.json
  def show
  end

  # GET /core/funcaos/new
  def new
    @core_funcao = Core::Funcao.new
  end

  # GET /core/funcaos/1/edit
  def edit
  end

  # POST /core/funcaos
  # POST /core/funcaos.json
  def create
    @core_funcao = Core::Funcao.new(core_funcao_params)

    respond_to do |format|
      if @core_funcao.save
        format.html { redirect_to @core_funcao, notice: 'Funcao was successfully created.' }
        format.json { render :show, status: :created, location: @core_funcao }
      else
        format.html { render :new }
        format.json { render json: @core_funcao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core/funcaos/1
  # PATCH/PUT /core/funcaos/1.json
  def update
    respond_to do |format|
      if @core_funcao.update(core_funcao_params)
        format.html { redirect_to @core_funcao, notice: 'Funcao was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_funcao }
      else
        format.html { render :edit }
        format.json { render json: @core_funcao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/funcaos/1
  # DELETE /core/funcaos/1.json
  def destroy
    @core_funcao.destroy
    respond_to do |format|
      format.html { redirect_to core_funcaos_url, notice: 'Funcao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_funcao
      @core_funcao = Core::Funcao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def core_funcao_params
      params.fetch(:core_funcao, {})
    end
end
