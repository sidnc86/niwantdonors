class DonarsController < ApplicationController

  # GET /donars
  # GET /donars.json
  def index
    @donars = Donar.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @donars }
    end
  end


  # POST /cities
  # POST /cities.json
  def create
    @city = City.new(params[:city])

    respond_to do |format|
      if @city.save
        format.html { redirect_to @city, notice: 'City was successfully created.' }
        format.json { render json: @city, status: :created, location: @city }
      else
        format.html { render action: "new" }
        format.json { render json: @city.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /donars/new
  # GET /donars/new.json
  def new
    @donar = Donar.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @donar }
    end
  end
end
