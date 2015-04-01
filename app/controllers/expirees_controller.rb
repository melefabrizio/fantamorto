class ExpireesController < ApplicationController
  before_action :set_expiree, only: [:show, :edit, :update, :destroy]

  # GET /expirees
  # GET /expirees.json
  def index
    @expirees = Expiree.all
  end

  # GET /expirees/1
  # GET /expirees/1.json
  def show
  end

  # GET /expirees/new
  def new
    @expiree = Expiree.new
  end

  # GET /expirees/1/edit
  def edit
  end

  # POST /expirees
  # POST /expirees.json
  def create
    @expiree = Expiree.new(expiree_params)

    respond_to do |format|
      if @expiree.save
        format.html { redirect_to @expiree, notice: 'Expiree was successfully created.' }
        format.json { render :show, status: :created, location: @expiree }
      else
        format.html { render :new }
        format.json { render json: @expiree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expirees/1
  # PATCH/PUT /expirees/1.json
  def update
    respond_to do |format|
      if @expiree.update(expiree_params)
        format.html { redirect_to @expiree, notice: 'Expiree was successfully updated.' }
        format.json { render :show, status: :ok, location: @expiree }
      else
        format.html { render :edit }
        format.json { render json: @expiree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expirees/1
  # DELETE /expirees/1.json
  def destroy
    @expiree.destroy
    respond_to do |format|
      format.html { redirect_to expirees_url, notice: 'Expiree was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expiree
      @expiree = Expiree.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expiree_params
      params.require(:expiree).permit(:name, :score)
    end
end
