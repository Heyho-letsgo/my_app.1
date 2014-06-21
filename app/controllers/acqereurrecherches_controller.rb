class AcqereurrecherchesController < ApplicationController
  before_action :set_acqereurrecherch, only: [:show, :edit, :update, :destroy]

  # GET /acqereurrecherches
  # GET /acqereurrecherches.json
  def index
    @acqereurrecherches = Acqereurrecherche.all
  end

  # GET /acqereurrecherches/1
  # GET /acqereurrecherches/1.json
  def show
  end

  # GET /acqereurrecherches/new
  def new
    @acqereurrecherch = Acqereurrecherche.new
  end

  # GET /acqereurrecherches/1/edit
  def edit
  end

  # POST /acqereurrecherches
  # POST /acqereurrecherches.json
  def create
    @acqereurrecherch = Acqereurrecherche.new(acqereurrecherch_params)

    respond_to do |format|
      if @acqereurrecherch.save
        format.html { redirect_to @acqereurrecherch, notice: 'Acqereurrecherche was successfully created.' }
        format.json { render action: 'show', status: :created, location: @acqereurrecherch }
      else
        format.html { render action: 'new' }
        format.json { render json: @acqereurrecherch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acqereurrecherches/1
  # PATCH/PUT /acqereurrecherches/1.json
  def update
    respond_to do |format|
      if @acqereurrecherch.update(acqereurrecherch_params)
        format.html { redirect_to @acqereurrecherch, notice: 'Acqereurrecherche was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @acqereurrecherch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acqereurrecherches/1
  # DELETE /acqereurrecherches/1.json
  def destroy
    @acqereurrecherch.destroy
    respond_to do |format|
      format.html { redirect_to acqereurrecherches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acqereurrecherch
      @acqereurrecherch = Acqereurrecherche.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acqereurrecherch_params
      params.require(:acqereurrecherch).permit(:acquereur_id, :type_de_bien, :chambre)
    end
end
