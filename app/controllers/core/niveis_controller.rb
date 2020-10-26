class Core::NiveisController < ApplicationController
    def index
        @niveis = Core::Nivel.all
        niveis = "asdfasdf"
    end

    def new 
        @core_nivel = Core::Nivel.new
    end
end