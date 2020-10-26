class Core::NiveisController < ApplicationController
    def index
        @niveis = Core::Nivel.all
    end

    def new 
        @core_nivel = Core::Nivel.new
    end
end