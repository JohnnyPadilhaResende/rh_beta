class Core::NiveisController < ApplicationController
    before_action :set_core_nivel, only: [:show, :edit, :update, :destroy]

    # GET /core/niveis
    # GET /core/niveis.json
    
    def index
        @core_niveis = Core::Nivel.all
    end

    # GET /core/niveis/1
    # GET /core/niveis/1.json
    def show
    end

    # GET /core/niveis/new
    def new 
        @core_nivel = Core::Nivel.new
    end

    # GET /core/niveis/1/edit
    def edit
    end

    # POST /core/niveis
    # POST /core/niveis.json
    def create
        @core_nivel = Core::Nivel.new(core_nivel_params)

        respond_to do |format|
            if @core_nivel.save
                format.html { redirect_to @core_nivel, notice: 'Novo nível criado com sucesso' }
                format.json { render :show, status: :created, location: @core_nivel }
            else
                format.html { render :new }
                format.json { render json: @core_nivel.errors, status: :unprocessable_entity }
            end
        end
    end

    # PATCH/PUT /core/niveis/1
    # PATCH/PUT /core/niveis/1.json
    def update
        respond_to do |format|
            if @core_nivel.update(core_nivel_params)
                format.html { redirect_to @core_nivel, notice: 'Nível editado com sucesso' }
                format.json { render :show, status: :ok, location: @core_nivel }
            else
                format.html { render :edit }
                format.json { render json: @core_nivel.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /core/niveis/1
    # DELETE /core/niveis/1.json
    def destroy
        @core_nivel.destroy
        respond_to do |format|
            format.html { redirect_to core_nivels_url, notice: 'Nível excluído com sucesso' }
            format.json { head :no_content }
        end
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_core_nivel
            @core_nivel = Core::Nivel.find(params[:id])
        end

        # Only allow a list of trusted parameters through.
        def core_nivel_params
            params.require(:core_nivel).permit(:cdg_ordem, :xp)
        end    
end