class FightsController < ApplicationController
  before_action :set_fight, only: [:show, :edit, :update, :destroy]

  # GET /fights
  # GET /fights.json
  def index
    @fights = Fight.all
  end

  # GET /fights/1
  # GET /fights/1.json
  def show
  end

  # GET /fights/new
  def new
    @fight = Fight.new
  end

  # GET /fights/1/edit
  def edit
  end

  # POST /fights
  # POST /fights.json
  def create
    @fight = Fight.new(fight_params)
    @fight.set_results!

    respond_to do |format|
      if @fight.save
        format.html { redirect_to @fight, notice: 'Fight was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fight }
      else
        format.html { render action: 'new' }
        format.json { render json: @fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fights/1
  # PATCH/PUT /fights/1.json
  def update
    result = @fight.update(fight_params)
    @fight.set_results!
    @fight.save!

    respond_to do |format|
      if @fight
        format.html { redirect_to @fight, notice: 'Fight was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fights/1
  # DELETE /fights/1.json
  def destroy
    @fight.destroy
    respond_to do |format|
      format.html { redirect_to fights_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fight
      @fight = Fight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fight_params
      params.require(:fight).permit(:winner_id, :loser_id, :winner_before_points, :winner_after_points, :loser_before_points, :loser_after_points, :tournament_id)
    end
end
