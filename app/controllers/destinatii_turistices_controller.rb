class DestinatiiTuristicesController < ApplicationController
  before_action :set_destinatii_turistice, only: [:show, :edit, :update, :destroy]

  # GET /destinatii_turistices
  # GET /destinatii_turistices.json
  def index
    @destinatii_turistices = DestinatiiTuristice.all
  end

  # GET /destinatii_turistices/1
  # GET /destinatii_turistices/1.json
  def show
  end

  # GET /destinatii_turistices/new
  def new
    @destinatii_turistice = DestinatiiTuristice.new
  end

  # GET /destinatii_turistices/1/edit
  def edit
  end

  # POST /destinatii_turistices
  # POST /destinatii_turistices.json
  def create
    @destinatii_turistice = DestinatiiTuristice.new(destinatii_turistice_params)

    respond_to do |format|
      if @destinatii_turistice.save
        format.html { redirect_to @destinatii_turistice, notice: 'Destinatii turistice was successfully created.' }
        format.json { render :show, status: :created, location: @destinatii_turistice }
      else
        format.html { render :new }
        format.json { render json: @destinatii_turistice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinatii_turistices/1
  # PATCH/PUT /destinatii_turistices/1.json
  def update
    respond_to do |format|
      if @destinatii_turistice.update(destinatii_turistice_params)
        format.html { redirect_to @destinatii_turistice, notice: 'Destinatii turistice was successfully updated.' }
        format.json { render :show, status: :ok, location: @destinatii_turistice }
      else
        format.html { render :edit }
        format.json { render json: @destinatii_turistice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinatii_turistices/1
  # DELETE /destinatii_turistices/1.json
  def destroy
    @destinatii_turistice.destroy
    respond_to do |format|
      format.html { redirect_to destinatii_turistices_url, notice: 'Destinatii turistice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_destinatii_turistice
      @destinatii_turistice = DestinatiiTuristice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def destinatii_turistice_params
      params.require(:destinatii_turistice).permit(:oras, :obiectiv, :descriete)
    end
end
