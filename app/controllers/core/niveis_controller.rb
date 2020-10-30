class Core::NiveisController < ApplicationController
    before_action :set_core_nivel, only: [:show, :edit, :update, :destroy]

    def index
        @core_niveis = Core::Nivel.all
    end

    def show
    end

    def new
        @core_nivel = Core::Nivel.new
    end

    def edit
    end

    def create
        @core_nivel = Core::Nivel.new(core_nivel_params)

        respond_to do |format|
            if @core_nivel.save
              format.html { redirect_to @core_nivel, notice: 'Nivel was successfully created.' }
              format.json { render :show, status: :created, location: @core_nivel }
            else
              format.html { render :new }
              format.json { render json: @core_nivel.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
            if @core_nivel.update(core_nivel_params)
              format.html { redirect_to @core_nivel, notice: 'Nivel was successfully updated.' }
              format.json { render :show, status: :ok, location: @core_nivel }
            else
              format.html { render :edit }
              format.json { render json: @core_nivel.errors, status: :unprocessable_entity }
            end
          end
    end

    def destroy
        @core_nivel.destroy

        respond_to do |format|
            format.html { redirect_to core_niveis_url, notice: 'Nivel was successfully destroyed.' }
            format.json { head :no_content }
        end
    end

    private
        def set_core_nivel
            @core_nivel = Core::Nivel.find(params[:id])
        end

        def core_nivel_params
            params.require(:core_nivel).permit(:xp, :cdg_ordem)
        end
end