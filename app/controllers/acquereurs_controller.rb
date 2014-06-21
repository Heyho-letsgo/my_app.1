class AcquereursController < ApplicationController
  before_action :set_acquereur, only: [:show, :edit, :update, :destroy]

  # GET /acquereurs
  # GET /acquereurs.json
  def index
    @acquereurs = Acquereur.all
  end

  # GET /acquereurs/1
  # GET /acquereurs/1.json
  def show
  end

  # GET /acquereurs/new
  def new
    @acquereur = Acquereur.new
  end

  # GET /acquereurs/1/edit
  def edit
  end

  # POST /acquereurs
  # POST /acquereurs.json
  def create
    @acquereur = Acquereur.new(acquereur_params)

    respond_to do |format|
      if @acquereur.save
        format.html { redirect_to @acquereur, notice: 'Acquereur was successfully created.' }
        format.json { render action: 'show', status: :created, location: @acquereur }
      else
        format.html { render action: 'new' }
        format.json { render json: @acquereur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acquereurs/1
  # PATCH/PUT /acquereurs/1.json
  def update
    respond_to do |format|
      if @acquereur.update(acquereur_params)
        format.html { redirect_to @acquereur, notice: 'Acquereur was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @acquereur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acquereurs/1
  # DELETE /acquereurs/1.json
  def destroy
    @acquereur.destroy
    respond_to do |format|
      format.html { redirect_to acquereurs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acquereur
      @acquereur = Acquereur.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acquereur_params
      params.require(:acquereur).permit(:prenom, :nom, :telephone, :email)
    end
end
