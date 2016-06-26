class VoiceKeywordsController < ApplicationController
  before_action :set_voice_keyword, only: [:show, :edit, :update, :destroy]

  # GET /voice_keywords
  # GET /voice_keywords.json
  def index
    @voice_keywords = VoiceKeyword.all
  end

  # GET /voice_keywords/1
  # GET /voice_keywords/1.json
  def show
  end

  # GET /voice_keywords/new
  def new
    @voice_keyword = VoiceKeyword.new
  end

  # GET /voice_keywords/1/edit
  def edit
  end

  # POST /voice_keywords
  # POST /voice_keywords.json
  def create
    @voice_keyword = VoiceKeyword.new(voice_keyword_params)

    respond_to do |format|
      if @voice_keyword.save
        format.html { redirect_to @voice_keyword, notice: 'Voice keyword was successfully created.' }
        format.json { render :show, status: :created, location: @voice_keyword }
      else
        format.html { render :new }
        format.json { render json: @voice_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voice_keywords/1
  # PATCH/PUT /voice_keywords/1.json
  def update
    respond_to do |format|
      if @voice_keyword.update(voice_keyword_params)
        format.html { redirect_to @voice_keyword, notice: 'Voice keyword was successfully updated.' }
        format.json { render :show, status: :ok, location: @voice_keyword }
      else
        format.html { render :edit }
        format.json { render json: @voice_keyword.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voice_keywords/1
  # DELETE /voice_keywords/1.json
  def destroy
    @voice_keyword.destroy
    respond_to do |format|
      format.html { redirect_to voice_keywords_url, notice: 'Voice keyword was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voice_keyword
      @voice_keyword = VoiceKeyword.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voice_keyword_params
      params.require(:voice_keyword).permit(:time, :keyword)
    end
end
