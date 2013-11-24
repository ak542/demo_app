class Ak542sController < ApplicationController
  before_action :set_ak542, only: [:show, :edit, :update, :destroy]

  # GET /ak542s
  # GET /ak542s.json
  def index
    @ak542s = Ak542.all
  end

  # GET /ak542s/1
  # GET /ak542s/1.json
  def show
  end

  # GET /ak542s/new
  def new
    @ak542 = Ak542.new
  end

  # GET /ak542s/1/edit
  def edit
  end

  # POST /ak542s
  # POST /ak542s.json
  def create
    @ak542 = Ak542.new(ak542_params)

    respond_to do |format|
      if @ak542.save
        format.html { redirect_to @ak542, notice: 'Ak542 was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ak542 }
      else
        format.html { render action: 'new' }
        format.json { render json: @ak542.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ak542s/1
  # PATCH/PUT /ak542s/1.json
  def update
    respond_to do |format|
      if @ak542.update(ak542_params)
        format.html { redirect_to @ak542, notice: 'Ak542 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ak542.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ak542s/1
  # DELETE /ak542s/1.json
  def destroy
    @ak542.destroy
    respond_to do |format|
      format.html { redirect_to ak542s_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ak542
      @ak542 = Ak542.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ak542_params
      params.require(:ak542).permit(:name, :email)
    end
end
