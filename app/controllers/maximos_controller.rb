class MaximosController < ApplicationController
  before_action :set_maximo, only: [:show, :edit, :update, :destroy]

  # GET /maximos
  # GET /maximos.json
  def index
    ver_datos
    @maximos = Maximo.all
  end

  # GET /maximos/1
  # GET /maximos/1.json
  def show
  end

  # GET /maximos/new
  def new
    @maximo = Maximo.new
  end

  # GET /maximos/1/edit
  def edit
  end

  # POST /maximos
  # POST /maximos.json
  def create
    @maximo = Maximo.new(maximo_params)

    respond_to do |format|
      if @maximo.save
        format.html { redirect_to @maximo, notice: 'Maximo was successfully created.' }
        format.json { render :show, status: :created, location: @maximo }
      else
        format.html { render :new }
        format.json { render json: @maximo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maximos/1
  # PATCH/PUT /maximos/1.json
  def update
    respond_to do |format|
      if @maximo.update(maximo_params)
        format.html { redirect_to @maximo, notice: 'Maximo was successfully updated.' }
        format.json { render :show, status: :ok, location: @maximo }
      else
        format.html { render :edit }
        format.json { render json: @maximo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maximos/1
  # DELETE /maximos/1.json
  def destroy
    @maximo.destroy
    respond_to do |format|
      format.html { redirect_to maximos_url, notice: 'Maximo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maximo
      @maximo = Maximo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maximo_params
      params.require(:maximo).permit(:juego, :puntaje)
    end
end
