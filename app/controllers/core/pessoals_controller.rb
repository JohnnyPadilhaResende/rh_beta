class Core::PessoalsController < ApplicationController
  before_action :set_core_pessoal, only: [:show, :edit, :update, :destroy]

  # GET /core/pessoals
  # GET /core/pessoals.json
  def index
    @core_pessoals = Core::Pessoal.all
  end

  # GET /core/pessoals/1
  # GET /core/pessoals/1.json
  def show
  end

  # GET /core/pessoals/new
  def new
    @core_pessoal = Core::Pessoal.new
  end

  # GET /core/pessoals/1/edit
  def edit
  end

  # POST /core/pessoals
  # POST /core/pessoals.json
  def create
    @core_pessoal = Core::Pessoal.new(core_pessoal_params)

    respond_to do |format|
      if @core_pessoal.save
        format.html { redirect_to @core_pessoal, notice: 'Pessoal was successfully created.' }
        format.json { render :show, status: :created, location: @core_pessoal }
      else
        format.html { render :new }
        format.json { render json: @core_pessoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /core/pessoals/1
  # PATCH/PUT /core/pessoals/1.json
  def update
    respond_to do |format|
      if @core_pessoal.update(core_pessoal_params)
        format.html { redirect_to @core_pessoal, notice: 'Pessoal was successfully updated.' }
        format.json { render :show, status: :ok, location: @core_pessoal }
      else
        format.html { render :edit }
        format.json { render json: @core_pessoal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/pessoals/1
  # DELETE /core/pessoals/1.json
  def destroy
    @core_pessoal.destroy
    respond_to do |format|
      format.html { redirect_to core_pessoals_url, notice: 'Pessoal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_core_pessoal
      @core_pessoal = Core::Pessoal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def core_pessoal_params
      params.require(:core_pessoal).permit(:cdg_ordem, :nmr_cpf, :nme_pessoa, :sexo, :dta_nascimento)
    end
end
