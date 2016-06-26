class VoiceCategoriesController < ApplicationController
  before_action :set_voice_category, only: [:show, :edit, :update, :destroy]

  # GET /voice_categories
  # GET /voice_categories.json
  def index
    @voice_categories = VoiceCategory.all
  end

  # GET /voice_categories/1
  # GET /voice_categories/1.json
  def show
  end

  # GET /voice_categories/new
  def new
    @voice_category = VoiceCategory.new
  end

  # GET /voice_categories/1/edit
  def edit
  end

  # POST /voice_categories
  # POST /voice_categories.json
  def create
    @voice_category = VoiceCategory.new(voice_category_params)

    respond_to do |format|
      if @voice_category.save
        format.html { redirect_to @voice_category, notice: 'Voice category was successfully created.' }
        format.json { render :show, status: :created, location: @voice_category }
      else
        format.html { render :new }
        format.json { render json: @voice_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voice_categories/1
  # PATCH/PUT /voice_categories/1.json
  def update
    respond_to do |format|
      if @voice_category.update(voice_category_params)
        format.html { redirect_to @voice_category, notice: 'Voice category was successfully updated.' }
        format.json { render :show, status: :ok, location: @voice_category }
      else
        format.html { render :edit }
        format.json { render json: @voice_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voice_categories/1
  # DELETE /voice_categories/1.json
  def destroy
    @voice_category.destroy
    respond_to do |format|
      format.html { redirect_to voice_categories_url, notice: 'Voice category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voice_category
      @voice_category = VoiceCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voice_category_params
      params.require(:voice_category).permit(:start_time, :end_time, :category)
    end
end
