class Core::FuncionalsController < ApplicationController
  before_action :set_core_funcional, only: [:show, :edit, :update, :destroy]

  # GET /core/funcionals
  # GET /core/funcionals.json
  def index
    @core_funcionals = Core::Funcional.all
  end

  # GET /core/funcionals/1
  # GET /core/funcionals/1.json
  def show
  end

  # GET /core/funcionals/new
  def new
    @core_funcional = Core::Funcional.new
  end

  # GET /core/funcionals/1/edit
  def edit
  end

  # POST /core/funcionals
  # POST /core/funcionals.json
  def create
    @core_funcional = Core::Funcional.new(core_funcional_params)

    respond_to do |format|
      if @core_funcional.save
        format.html { redirect_to @core_funcional, notice: 'Funcional was successfully created.' }
        format.json { render :show, status: :created, location: @core_funcional }
      else
        format.html { render :new }
        format.json { render json: @core_funcional.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core/funcionals/1
  # PATCH/PUT /core/funcionals/1.json
  def update
    respond_to do |format|
      if @core_funcional.update(core_funcional_params)
        format.html { redirect_to @core_funcional, notice: 'Funcional was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_funcional }
      else
        format.html { render :edit }
        format.json { render json: @core_funcional.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/funcionals/1
  # DELETE /core/funcionals/1.json
  def destroy
    @core_funcional.destroy
    respond_to do |format|
      format.html { redirect_to core_funcionals_url, notice: 'Funcional was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_funcional
      @core_funcional = Core::Funcional.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def core_funcional_params
      params.require(:core_funcional).permit(:cdg_funcao, :cdg_ordem, :cdg_funcional, :status, :ref_anomes, :dta_admissao)
    end
end
